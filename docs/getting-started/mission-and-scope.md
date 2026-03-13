# Mission and Scope

OpenSling exists to document how to build **machines that make dirty water cleaner in a measurable way**. The emphasis is on practical systems engineering: treatment stages, component choices, testing plans, and operating procedures.

## Working Mission

Build an open, modular reference stack for water-cleaning hardware that is:

- understandable by new contributors
- instrumented enough to debug
- repairable without vendor lock-in
- explicit about source-water assumptions

## Primary Deliverables

The first version of this wiki is organized around three tangible outputs:

1. a bench prototype that is easy to modify and measure
2. a field pilot skid that packages the same logic into serviceable hardware
3. a reusable test rig for comparing pumps, filters, and treatment stages

## In Scope

- intake, pumping, plumbing, and packaging decisions
- solids removal, filtration, adsorption, and disinfection stages
- sensor selection, control logic, and data logging
- maintenance procedures and failure analysis
- documentation standards for experiments and field notes

## Out of Scope

- claims that a generic design is safe for every water source
- industrial compliance advice for specific jurisdictions
- replacing laboratory validation with informal observation

## How to Use the Wiki

If you are new:

1. start with [Design Principles](design-principles.md)
2. read the water-side context in [Contaminants and Constraints](../foundations/contaminants.md)
3. choose a system concept in [Modular Architecture](../systems/modular-architecture.md)
4. build something concrete from the [Bench Prototype](../build-guides/bench-prototype.md)

!!! note
    OpenSling treats documentation as part of the hardware. A prototype without assumptions, measurements, and failure notes is incomplete.
