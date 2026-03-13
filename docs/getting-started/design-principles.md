# Design Principles

These principles are intended to keep the project grounded when design choices start multiplying.

## Core Rules

| Principle | What it means in practice |
|-----------|---------------------------|
| Modular | Each treatment function should be swappable without rebuilding the whole machine. |
| Measurable | Every stage needs inlet and outlet observations, not just faith in the component label. |
| Repairable | A field operator should be able to open, clean, and replace common wear items quickly. |
| Honest about limits | If a module only handles turbidity and sediment, document that clearly. |
| Energy-aware | Power budgets matter, especially for remote or solar-backed deployments. |
| Safe by default | Pressure, electricity, UV exposure, and biohazard handling need explicit safeguards. |

## Preferred Patterns

- clear plumbing runs over tightly packed assemblies
- common voltages and connectors over custom one-off wiring
- sample ports before and after major treatment stages
- consumables that can be sourced from multiple vendors
- documentation that states the source-water scenario up front

## Avoid

- hidden dependencies between modules
- treatment claims without a validation plan
- filter stacks that are impossible to inspect or clean
- electronics mounted where leaks naturally drain
- ambiguous versioning of mechanical assemblies

## Definition of Done

A subsystem is ready to share when it has:

- a purpose statement
- a schematic or plumbing map
- a bill of materials or sourcing path
- operating assumptions
- failure modes worth watching
- at least one measurable success criterion

## Design Review Questions

Before adopting a new concept, answer these directly:

1. Which contaminant class is this stage meant to reduce?
2. What measurement shows whether it is working?
3. What fouls or wears first?
4. What does service look like after 50 hours, 200 hours, and one bad day in the field?
5. Can a contributor reproduce the design without asking the original builder?
