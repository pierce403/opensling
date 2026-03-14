# Fabrication Pack

This directory stores the current custom-part starter pack for OpenSling.

## Scope

Included parts are limited to custom non-pressure components that support routing, mounting, guarding, or instrumentation.

Not included:

- pressure-bearing shells
- heat-exchanger metal fabrication drawings
- compressor internals
- certified mains-power assemblies

## Layout

- `openscad/`: editable reference CAD sources
- `stl/`: generated mesh exports
- `generate_assets.py`: mesh-generation script
- `requirements.txt`: Python dependencies for regeneration

## Regeneration

```bash
source ../venv/bin/activate
pip install -r requirements.txt
python generate_assets.py
```
