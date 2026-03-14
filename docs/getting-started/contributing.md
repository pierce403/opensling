# Contributing

This wiki should accumulate usable engineering knowledge, not just polished summaries. Contributions are most helpful when they leave a clear trail from idea to implementation to measured result.

## What to Contribute

- new build guides
- updates to treatment assumptions
- field notes from prototype runs
- maintenance findings and failure reports
- component comparisons with documented reasoning

## Minimum Contribution Standard

Every substantive addition should answer:

- What problem was being solved?
- What water source or operating context was assumed?
- What changed in the design or process?
- What did we measure afterward?
- What remains uncertain?

## Suggested Page Pattern

Use a structure like this when adding a new technical page:

```markdown
# Title

## Purpose

## Context and Assumptions

## Build or Procedure

## Measurements

## Failure Modes

## Next Iteration
```

## Git Workflow

1. create or edit pages under `docs/`
2. preview locally with `./serve.sh`
3. run `./build.sh` before pushing
4. commit with a message that names the system or process you changed

## Licensing Expectation

Submit material only if you are willing to share it under this repo's open-license model:

- documentation text, diagrams, tables, and educational media under `CC BY 4.0`
- code, scripts, configuration, and fabrication design sources under `Apache-2.0`

If a contribution needs a different license or a restriction, say so clearly in the file itself before it is merged.

## Writing Style

- prefer precise statements over marketing language
- state units for all measurements
- separate facts, assumptions, and next-step hypotheses
- use tables when comparing options
- keep photos and diagrams tied to the specific hardware revision they show

## Failure Reports

A good failure report is a contribution, not a setback. Include:

- what failed
- when it failed
- what the machine was doing at the time
- how the operator recovered
- what change should be tested next
