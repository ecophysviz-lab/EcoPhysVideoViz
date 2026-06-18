.PHONY: install install-components run dev build-components build-dash clean-cache clear-cache

# Install Python deps + component packages
install: install-components
	pip install .

install-components:
	pip install ./three_js_orientation ./video_preview

# Run the app
run:
	DASH_USE_CACHE=true python data_visualization.py

dev:
	DASH_USE_CACHE=true DASH_DEBUG=true \
	DASH_LOG_LEVEL=DEBUG \
	DASH_LOG_DATA_VIZ=DEBUG \
	DASH_LOG_CALLBACKS=DEBUG \
	DASH_LOG_SELECTION=DEBUG \
	DASH_LOG_LAYOUT=DEBUG \
	python data_visualization.py

nocache:
	DASH_USE_CACHE=false python data_visualization.py

# Rebuild a component from source (requires node/npm)
build-components:
	$(MAKE) build-dash component=three_js_orientation
	$(MAKE) build-dash component=video_preview

build-dash:
	@echo "Building $(component)..."
	@cd $(component) && \
	echo "  → Installing npm dependencies..." && npm i > /dev/null 2>&1 && \
	echo "  → Building JavaScript..." && npm run build > /dev/null 2>&1 && \
	echo "  → Building Python package..." && python setup.py sdist bdist_wheel > /dev/null 2>&1 && \
	echo "  → Installing Python package..." && pip install dist/$(component)-0.0.1.tar.gz > /dev/null 2>&1 && \
	echo "  ✓ $(component) done"

clean-cache:
	@python -c "from DiveDB.services.utils.cache_utils import cleanup_old_cache_files; cleanup_old_cache_files('.cache/duckpond', 86400)"

clear-cache:
	@python -c "from DiveDB.services.utils.cache_utils import clear_all_caches; result = clear_all_caches(); print('\n'.join(f'  {k}: {v} files' for k,v in result.items()))"
