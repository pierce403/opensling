# Evaporator And Condenser Core

This module is the heart of the machine. It is where the feed is lifted toward evaporation and where compressed vapor returns its latent heat by condensing.

## Public Slingshot Basis

DEKA’s public Slingshot page describes:

- preheated source water entering from the bottom
- copper tubes
- plastic dowels placed inside the tubes
- a thin water film between dowel and tube wall
- compressed steam condensing on the “cooler” tubes and driving the next evaporation step[^deka]

## OpenSling Reference Choice

The open design keeps the same functional idea but makes the implementation easier to inspect and fabricate:

| Publicly documented element | OpenSling reference choice |
|-----------------------------|----------------------------|
| Copper thin-film evaporator tubes | 316L stainless tube bundle with removable flow displacers or inserts |
| Sealed proprietary module | Pressure shell with service ports, visual instrumentation, and replaceable gaskets |
| Implicit condensation on tube exterior | Explicit shell-side condenser zone with accessible sample and drain points |

## Design Requirements

- maintain a stable thin film on the hot side
- minimize dry spots and localized scaling
- maximize recoverable heat transfer area
- tolerate repeated disassembly for cleaning and redesign

## Things To Measure

- inlet feed temperature
- shell pressure
- tube-wall or near-wall temperature
- outlet concentrate temperature
- scale growth and fouling pattern

## Failure Modes

- tube fouling and scale lock
- uneven film distribution
- gasket creep during thermal cycling
- carryover caused by unstable boiling

## Open Questions

- Whether the best open version uses stainless rods, printed displacers, or hybrid inserts
- How much serviceability is lost if the bundle becomes too dense

[^deka]: [DEKA Slingshot page](https://dekaresearch.com/slingshot/).
