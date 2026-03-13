# AGENTS.md

## Project Identity

OpenSling is an open-source/open-knowledge project for documenting and building machines that clean water. The repository is an engineering workspace, not a marketing site.

## Working Norms

- Keep a root-level `TODO.md` up to date as work progresses.
- After each completed task chunk, update `TODO.md`, commit, and push.
- Distinguish clearly between:
  - publicly verified facts
  - working assumptions
  - design inferences
- Prefer primary sources for claims about public health, regulations, and historical project details.
- When the user references the Slingshot project, treat DEKA/Coca-Cola/TED/patent material as historical reference material, not as proof of current deployment status.
- If a public-health claim is time-sensitive, include the exact year of the underlying data.
- If the user describes malaria as a water-borne disease, clarify that it is mosquito-borne but strongly linked to standing water, drainage, and infrastructure conditions.

## Documentation Norms

- The landing page should explain why the project matters now, with concrete sourced numbers.
- Source-heavy pages should link directly to the cited source at the point of use or in a short sources section.
- For Slingshot-related pages, separate “publicly documented” details from “OpenSling reconstruction choices”.
- Do not claim production readiness unless the design has validated dimensions, materials, safety checks, and commissioning steps.

## Design And Fabrication Norms

- Favor modular subsystems that can be built, tested, and replaced independently.
- Custom fabrication assets should be stored in a dedicated `fabrication/` tree.
- Include editable source files when possible, not only exported meshes.
- Treat pressure-bearing, potable-water, and mains-electric parts as safety-critical; if the design is incomplete, say so explicitly.

## Licensing Intent

- Documentation text, diagrams, and educational media are intended to be shared under CC BY 4.0 unless a page says otherwise.
- Code, scripts, and fabrication design sources are intended to remain under Apache-2.0 unless a file says otherwise.

## Current Workflow

1. Update `TODO.md`.
2. Make the smallest coherent task chunk possible.
3. Verify the site still builds.
4. Commit with a task-specific message.
5. Push immediately after the commit.
