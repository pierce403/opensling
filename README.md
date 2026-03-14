# OpenSling Wiki

OpenSling is an open documentation hub for designing, prototyping, and operating machines that clean water. This repo keeps the same MkDocs Material setup as `sloppy.wiki`, retargeted around modular treatment hardware, testing workflows, and field operations.

## Quick Start

```bash
source activate.sh
./serve.sh
```

The local site is served at `http://127.0.0.1:8000`.

To produce a deployable build:

```bash
./build.sh
```

## What This Wiki Covers

- treatment-train design for field-cleanable water systems
- mechanical and electrical architecture for modular treatment machines
- build guides for bench prototypes, pilot skids, and test rigs
- operational practices for sampling, maintenance, and safety
- research backlogs and sourcing notes for future iterations

## Repo Layout

- `mkdocs.yml`: site navigation, theme, and Markdown configuration
- `docs/`: wiki content and static assets
- `docs/css/custom-styles.css`: visual overrides for the OpenSling theme
- `.github/workflows/deploy.yml`: GitHub Actions deployment workflow
- `activate.sh`, `serve.sh`, `build.sh`: local development helpers

## Deployment

The workflow builds the site on every push to `main` and publishes it through the official GitHub Pages deployment flow. The intended public URL is:

`https://opensling.org`

## Licensing Model

OpenSling is meant to be copied and built from.

- documentation text, diagrams, tables, and educational media are licensed under `CC BY 4.0`
- code, scripts, configuration, and fabrication design sources are licensed under `Apache-2.0`

See `LICENSING.md`, `LICENSE`, and `LICENSE-docs.md`.

## License

Reuse is encouraged. Copy the docs, adapt them, fork the code, and build from the fabrication files within the license terms above.
