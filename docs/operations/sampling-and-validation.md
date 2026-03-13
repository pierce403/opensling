# Sampling and Validation

If the project cannot show what changed between inlet and outlet, it is not engineering yet. Sampling plans are part of the machine design.

## Minimum Sampling Points

- raw source water
- after bulk solids removal
- after fine filtration
- final outlet or storage point

## Record for Every Sample

| Field | Why it matters |
|-------|----------------|
| time and date | tracks drift over the run |
| machine revision | avoids mixing results across hardware changes |
| source description | water quality may vary by location and season |
| flow rate | treatment performance is often flow-dependent |
| observed turbidity, color, odor | fast field context even when lab data comes later |
| operator notes | captures anomalies that instruments miss |

## Validation Mindset

Use the simplest metric that answers the current question, then expand as the design matures:

- turbidity or optical clarity trends for solids handling
- pressure rise for fouling behavior
- treated volume before service for maintenance planning
- source-specific lab tests when the target use case requires them

## Common Failure

Sampling only when the machine is freshly cleaned produces misleading optimism. Include dirty-state and end-of-run measurements.
