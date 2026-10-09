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

Wrangler records the ordinary Worker route `opensling.org/*`, scoped to zone
`opensling.org`. It covers apex paths and query strings while retaining the
original GitHub Pages apex A values in DNS management. The apex records must be
proxied, the zone active, and its edge certificate ready before live verification.
Native Git publishing manages this route; no custom-domain DNS replacement is
requested by this configuration.

This Worker has no `main` script. Its static assets and generated `404.html`
provide a terminal 404 for missing paths with `not_found_handling: 404-page`.
It does not fetch the retained Pages origin. That origin can become reachable
again if the route is removed or bypassed, or proxying is disabled; inspect route
conflicts and fail mode before release. Apex routing does not cover `www`.

This child change remains local for coordinator review. See [NOTES](NOTES.md)
for the custom-domain conflict and remaining deployment, DNS, certificate, HTTPS,
and path checks. Preserve all original DNS/mail values and the previous Pages
deployment/source for recovery. Manual recovery must pause automatic builds and
wait for active builds, then verify recovery before re-enabling them.

Cloudflare documents [ordinary-route prerequisites](https://developers.cloudflare.com/workers/configuration/routing/routes/)
and [static-site 404 handling](https://developers.cloudflare.com/workers/static-assets/routing/static-site-generation/).

Wrangler logs and traces are enabled, but asset-only requests bypass Worker
execution. Use Cloudflare HTTP analytics for those requests.
