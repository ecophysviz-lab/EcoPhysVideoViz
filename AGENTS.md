# EcoPhysVideoViz

Synchronized biologging data + video visualization Dash app. Queries sensor data from DiveDB (Iceberg/DuckDB), fetches synchronized video from Immich, renders 3D orientation via ThreeJsOrientation, and plays them back together.

**Detailed reference:** [README.md](README.md)

## Repo layout

| Area | Path | Notes |
| --- | --- | --- |
| App entry | `data_visualization.py` | DuckPond + ImmichService init, layout assembly |
| Server callbacks | `callbacks.py` | Video selection, channel management |
| Selection callbacks | `selection_callbacks.py` | Deployment load, Immich fetch, graph generation |
| Client callbacks | `clientside_callbacks.py` | Playback sync (JS) |
| Layout | `layout/` | sidebar, timeline, indicators, modals |
| Assets | `assets/` | CSS, JS, SVGs, FBX models |
| VideoPreview | `video_preview/` | Self-contained Dash component |
| ThreeJsOrientation | `three_js_orientation/` | Self-contained Dash component |

## Key abstractions

- **DuckPond** — from `DiveDB` pip dep; queries Iceberg data lake
- **ImmichService** — from `DiveDB` pip dep; fetches video URLs from Immich
- **NotionORMManager** — from `DiveDB` pip dep; loads deployment/channel metadata
- **VideoPreview** — React Dash component; syncs video to playhead time
- **ThreeJsOrientation** — React Dash component; renders 3D orientation from PRH data

## Dev commands

```bash
source venv/bin/activate
pip install -e .
python data_visualization.py   # http://localhost:8054
```

## Terminology

- `organism_id` is canonical in new code; `animal_id` accepted as deprecated alias
- SQL column `animal` in DiveDB is frozen — do not rename

## Code standards

- **Fail fast** — no silent fallbacks on missing env vars or data
- **No bare `except`** — catch specific exceptions only
- **Logging** — use `get_logger()` from `logging_config.py`; no bare `print`
- Type hints on all new function signatures

## Do not

- Import from `DiveDB/dash/` path directly — use the `DiveDB` pip package
- Commit `.env` or any credentials
- Run production deploys from an agent session
- Rename the SQL `animal` column or NetCDF `animal_id` field
