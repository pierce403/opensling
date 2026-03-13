# Sensors and Controls

Without instrumentation, you cannot tell whether a machine improved water quality or just moved the problem downstream.

## Baseline Sensor Set

| Sensor | Why it matters | Placement |
|--------|----------------|-----------|
| Flow | verifies throughput and helps normalize performance | main treated-water line |
| Pressure | shows restriction and fouling | before and after filters |
| Tank level | protects pumps and supports automation | feed and clean tanks |
| Turbidity or optical proxy | tracks solids reduction trends | inlet and post-filtration |
| Conductivity or TDS proxy | flags dissolved-load changes | source and product water when relevant |
| Temperature | affects UV performance, battery behavior, and process notes | enclosure and water stream |

## Control Goals

The first control layer should be boring and robust:

- prevent dry running
- shut down on dangerous overpressure
- log runtime and fault states
- expose a manual override for service work
- leave room for future telemetry without depending on it

## Logging

At minimum, log:

- timestamps
- pump runtime
- fault events
- filter differential pressure
- measured or estimated treated volume

## Alarm Philosophy

Good alarms are actionable. Avoid vague indicators like "service soon" unless they map to a clear threshold such as pressure rise, runtime hours, or UV lamp age.
