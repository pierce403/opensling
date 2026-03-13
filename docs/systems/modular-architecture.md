# Modular Architecture

OpenSling treats a water-cleaning machine as a chain of interfaceable modules. Each module should have a clear role, expected inlet conditions, and a bounded maintenance story.

## Reference Modules

| Module | Purpose | Typical interfaces |
|--------|---------|--------------------|
| Intake | draw from source while excluding gross debris | hose, foot valve, coarse screen |
| Solids module | remove heavy particulate load | reservoir, cyclone, drain loop |
| Fine filtration module | lower suspended solids | filter housings, differential pressure ports |
| Polishing module | adsorption or chemistry-specific treatment | inline canister, bypass manifold |
| Disinfection module | reduce biological load | UV chamber or chemical dosing zone |
| Controls module | coordinate sensors, pumps, alarms, logs | low-voltage power, I/O harness |
| Power module | supply and protect electrical loads | battery, DC bus, charging input |

## Interface Contract

Every module page should eventually define:

- flow range
- pressure range
- electrical needs
- service interval
- failure signals
- acceptable upstream and downstream conditions

## Packaging Advice

- keep the dirty path and clean path visually distinct
- mount service items where they can be replaced without pulling other modules
- place drains and flush points intentionally
- leave physical room for instrumentation upgrades

## Versioning

Use simple revision labels on assemblies and manifolds. If a field note mentions "pilot skid rev B", the plumbing map should make that traceable.
