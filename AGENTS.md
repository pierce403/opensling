# AGENTS.md

## Self-Improvement Directive

Read this file at the start of every task. Update it whenever you learn something important about this repo, including:

- verified commands that work
- mistakes or dead ends worth avoiding
- deployment or build gotchas
- project structure changes
- collaborator preferences that affect how work should be done

Capture both wins to repeat and failures to avoid. Be specific: use exact commands, paths, URLs, and concrete examples instead of vague advice.

## Project Identity

OpenSling is an open-source/open-knowledge engineering wiki for building machines that clean water. This repository is a working design and research space, not a marketing site.

## Collaborator Cues

- The collaborator wants practical, direct execution rather than long planning.
- When research matters, use current web sources and prefer primary sources.
- Distinguish clearly between public facts, working assumptions, and design inferences.
- Keep `TODO.md` current, and after each completed task chunk update it, commit, and push.
- For sourcing tasks, publish a dated BOM snapshot and separate `buy now` parts from geometry-dependent `hold` items.
- When given a shared ChatGPT thread or similar artifact, treat it as source material to compare against public evidence, not as automatic ground truth.
- The collaborator wants real numbers, exact dates, and explicit source-backed claims on public-health topics.

## Verified Commands

```bash
# Environment
source activate.sh

# Local preview
./serve.sh

# Strict site build
./build.sh

# Regenerate current fabrication meshes
source venv/bin/activate
python fabrication/generate_assets.py

# Check recent GitHub Actions runs
gh run list --repo pierce403/opensling --limit 5

# Verify the live custom domain after deployment
curl -I https://opensling.org
```

## Project Structure

- `docs/`: published wiki content
- `docs/slingshot-reference/`: Slingshot history, public specs, assembly overview, components, and fabrication docs
- `fabrication/openscad/`: editable custom-part CAD sources
- `fabrication/stl/`: generated STL exports for currently defined non-pressure parts
- `fabrication/generate_assets.py`: deterministic STL generator used in this repo
- `.github/workflows/deploy.yml`: official GitHub Pages workflow deployment
- `docs/CNAME`: custom-domain binding for `opensling.org`
- `TODO.md`: active progress tracker and next-work queue

## Tech Stack And Dependencies

- MkDocs
- Material for MkDocs
- `pymdown-extensions`
- Python virtual environment created by `activate.sh`
- Fabrication mesh generation uses:
  - `trimesh`
  - `manifold3d`
  - `numpy`

## Documentation Norms

- The landing page should explain why the project matters now, using concrete sourced numbers.
- Source-heavy pages should cite primary or otherwise authoritative sources directly.
- For Slingshot-related pages, separate:
  - publicly documented facts
  - shared-thread notes
  - OpenSling reconstruction choices
- If a public-health number is time-sensitive, include the exact year of the underlying data.
- If a page tells people what to buy, date-stamp the price snapshot and make the missing pieces impossible to miss.
- If malaria is discussed alongside water-borne disease, clarify that malaria is mosquito-borne but linked to water, drainage, and infrastructure conditions.
- Do not claim production readiness unless dimensions, materials, safety limits, and commissioning behavior are actually validated.

## Coding And Content Conventions

- Prefer explicit engineering language over promotional language.
- Use exact dates and years for historical and public-health statements.
- Name pages and sections by function, not branding.
- Keep “publicly verified,” “shared-thread,” and “OpenSling choice” concepts visibly separated when a topic mixes them.
- For repo instructions, prefer exact commands and paths over prose descriptions.

## Design And Fabrication Norms

- Favor modular subsystems that can be built, tested, and replaced independently.
- Store custom fabrication assets in `fabrication/`.
- Include editable source files when possible, not only mesh exports.
- Treat pressure-bearing, potable-water, and mains-electric parts as safety-critical.
- Do not imply that a pressure shell, heat-exchanger metal drawing, or certified electrical assembly is ready if it has not been validated.
- The current fabrication pack only covers non-pressure custom parts. Keep that boundary explicit.

## Agent Tips

- When a workflow succeeds, verify the user-visible outcome instead of trusting the green checkmark.
- For health-burden content, source from WHO or WHO/UNICEF JMP first if possible.
- For Slingshot history, DEKA and Coca-Cola are the main primary public sources; treat secondary press as supplementary.
- If the collaborator asks for “real numbers,” include both the number and the data year.
- If a task changes process, repo norms, deployment, or recurring commands, update this file in the same task.

## Deployment Notes

- This repo’s GitHub Pages configuration uses `build_type: workflow`.
- Do not use an old-style `gh-pages` branch deployment action here unless the Pages configuration is changed to match it.
- The working deployment path is the official GitHub Pages flow:
  - build site
  - upload Pages artifact
  - deploy with `actions/deploy-pages`
- Keep these aligned:
  - `mkdocs.yml` `site_url`
  - `docs/CNAME`
  - GitHub Pages custom-domain setting
- A green workflow is not enough. Verify the live domain actually returns `200 OK`.

## Known Pitfalls And Solutions

- Pitfall: successful pushes to a `gh-pages` branch do not make the site live when Pages is configured for workflow deployment.
  - Fix: use the official Pages artifact/deploy workflow and verify `opensling.org` directly.
- Pitfall: shared-thread technical details can drift beyond what is publicly verified.
  - Fix: preserve them as thread-derived notes or design inferences unless corroborated.
- Pitfall: old public-health slogans on historical water pages are often outdated.
  - Fix: replace them with current WHO/JMP figures and date them explicitly.
- Pitfall: fabrication assets can accidentally imply pressure readiness.
  - Fix: document the safety boundary in both the fabrication page and the fabrication directory README.
- Pitfall: retail product slugs, especially Home Depot links, drift and can 404 while the product ID still works.
  - Fix: verify vendor URLs directly with `curl -IL` and prefer canonical product pages with stable numeric IDs when possible.

## Rapport And Reflection

- The collaborator values direct, factual status updates and visible forward motion.
- The collaborator expects internet-backed checking when asking about current public information.
- The collaborator prefers end-to-end execution over brainstorming unless they explicitly ask to plan.
- Keep this file concise, but do not omit exact commands, paths, or pitfalls that future agents would otherwise have to rediscover.

## Reflection Rule

Before finishing a task, ask:

1. Did I learn a new command, file, failure mode, or deployment lesson?
2. Did I discover a collaborator preference that will matter next time?
3. Did I create a new recurring workflow that future agents should reuse?

If the answer to any of these is yes, update this file before stopping.

## Current Workflow

1. Update `TODO.md`.
2. Make the smallest coherent task chunk possible.
3. Verify the site still builds.
4. Commit with a task-specific message.
5. Push immediately after the commit.
