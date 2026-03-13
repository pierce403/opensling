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

The workflow builds the site on every push to `main` and publishes the static output to `gh-pages`. Once GitHub Pages is enabled for the repository, the intended public URL is:

`https://pierce403.github.io/opensling`

## Licensing Model

The current repository root license is Apache-2.0. Project intent is to keep documentation and educational media open under CC BY 4.0 while keeping code, scripts, and fabrication design sources under Apache-2.0. See `LICENSING.md`.

## License

This repository currently ships with the Apache 2.0 license inherited from the template scaffold.
