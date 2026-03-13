# OpenSling Wiki Setup Notes

This file captures the initial decisions used to adapt the `sloppy.wiki` scaffold into the OpenSling project wiki.

## Current Decisions

| Item | Value | Notes |
|------|-------|-------|
| Site name | `OpenSling Wiki` | Public-facing wiki title |
| Tagline | `Open documentation for building machines that clean water` | Used in metadata and homepage copy |
| Repo URL | `https://github.com/pierce403/opensling` | GitHub source of truth |
| Site URL | `https://pierce403.github.io/opensling` | Intended GitHub Pages URL |
| Logo path | `docs/img/logo.svg` | Simple in-repo SVG mark |
| Favicon path | `docs/img/favicon.svg` | Matching SVG favicon |
| Primary color | `teal` | Material theme token |
| Accent color | `cyan` | Material theme token |
| Default mode | Light, with dark toggle | Better for diagrams and field photos |
| Custom domain | None configured | Add `CNAME` later if needed |

## Content Structure

The initial documentation tree is organized around the actual work of building water-cleaning hardware:

- `getting-started/`: project scope, design rules, contributor workflow
- `foundations/`: treatment concepts and design tradeoffs
- `systems/`: architecture, controls, and packaging
- `build-guides/`: prototype, pilot, and test-rig instructions
- `operations/`: validation, maintenance, and safety
- `research/`: open questions and sourcing notes

## Local Workflow

```bash
source activate.sh
./serve.sh
./build.sh
```

The local helper scripts mirror the original template, with messages renamed for OpenSling.
