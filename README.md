# EcoPhysVideoViz

Synchronized biologging data + video visualization dashboard for the EcophysViz lab.

Combines sensor data from the [DiveDB](https://github.com/ecophysviz-lab/DiveDB) Iceberg data lake with synchronized video playback, 3D orientation rendering, and interactive signal timelines.

## Architecture

```
EcoPhysVideoViz (this repo)
├── Dash app (data_visualization.py)
├── VideoPreview component  (components/video_preview/)
├── ThreeJsOrientation component (components/three_js_orientation/)
└── DiveDB (pip dependency) ──→ DuckPond, ImmichService, NotionORMManager
```

## Repo layout

| Path | Description |
| --- | --- |
| `data_visualization.py` | App entry point |
| `callbacks.py` | Server-side callbacks (video selection, channels) |
| `selection_callbacks.py` | Deployment selection, data loading, Immich video fetch |
| `clientside_callbacks.py` | Client-side playback sync (video, 3D model, slider) |
| `layout/` | Dash layout components (sidebar, timeline, indicators) |
| `assets/` | Static files (CSS, JS, SVG, 3D models) |
| `video_preview/` | VideoPreview Dash component (React + Python wrapper) |
| `three_js_orientation/` | ThreeJsOrientation Dash component |

## Setup

```bash
python3 -m venv venv
source venv/bin/activate
pip install -e .

cp .env.example .env
# fill in S3, Notion, Immich credentials
```

## Run

```bash
python data_visualization.py
# → http://localhost:8054
```

## Dependencies

- **[DiveDB](https://github.com/ecophysviz-lab/DiveDB)** — Iceberg data lake, DuckPond query API, ImmichService, NotionORMManager
- **Dash / Plotly** — UI framework
- **plotly-resampler** — efficient large-signal rendering
- **dash-extensions** — server-side caching via `Serverside`

## Environment variables

See `.env.example`. All S3/Notion/Immich credentials are required. `DASH_USE_CACHE=true` enables disk caching for faster deployment loads.

## Agent orientation

See [AGENTS.md](AGENTS.md).
