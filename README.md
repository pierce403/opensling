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
- `.github/workflows/deploy.yml`: GitHub Actions validation workflow
- `activate.sh`, `serve.sh`, `build.sh`: local development helpers


## Licensing Model

OpenSling is meant to be copied and built from.

- documentation text, diagrams, tables, and educational media are licensed under `CC BY 4.0`
- code, scripts, configuration, and fabrication design sources are licensed under `Apache-2.0`

See `LICENSING.md`, `LICENSE`, and `LICENSE-docs.md`.

## License

Reuse is encouraged. Copy the docs, adapt them, fork the code, and build from the fabrication files within the license terms above.

## Cloudflare publishing

The `opensling` Worker is prepared to serve only `.cloudflare/site/` with
Workers Static Assets. The strict build uses a complete version-pinned Python
renderer and locally pinned Wrangler 4.145.0. Original `site/`, content, canonical
`https://opensling.org`, page paths, search, feeds where configured, and `docs/CNAME`
remain preserved for recovery. The isolated output avoids modifying tracked
legacy generated files. No robots policy was added or changed.

```bash
npm ci
npm run build
npm run deploy:check
npm run dev
```

Configure Cloudflare Workers Builds for `pierce403/opensling`, production `main`,
root `/`, build `npm run build`, deploy `npx wrangler deploy`, and included paths
`*`. Once connected, a validated commit pushed to `main` lets Cloudflare fetch,
build, and deploy. Cloudflare retains its deployment credential; no Cloudflare
secrets belong in GitHub. `.github/workflows/deploy.yml` now validates and saves a
build artifact only, with no Pages or Cloudflare deployment step.

Git connection, workers.dev serving, custom-domain attachment, and registrar
cutover require separate live verification. Wrangler records only `opensling.org` as the exact
custom domain route. Keep the initial route commit local until this zone is active
after the verified DNS import and approved Namecheap delegation; then pushing
`main` lets the native Git deployment provision the hostname. Public cutover
requires separate DNS, certificate, and HTTPS verification. Keep the prior GitHub Pages deployment/source for
rollback. Manual recovery must pause automatic builds and wait for active builds;
verify recovery before re-enabling them.

Wrangler logs and traces are enabled, but asset-only requests bypass Worker
execution. Use Cloudflare HTTP analytics for those requests.
