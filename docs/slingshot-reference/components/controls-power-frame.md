# Controls, Power, And Frame

The machine is only useful if it can start reliably, stay inside safe limits, and be serviced in the field without guesswork.

## Shared-Thread Basis

The shared thread suggested:

- a startup heater around <strong>1200 W</strong>
- pressure gauge and thermostat coverage
- conductivity checks
- manual feed and blowdown regulation for the first low-cost build
- a frame built around service access rather than compactness for its own sake[^share]

## OpenSling Reference Choice

The current reference architecture uses:

- a welded or bolted serviceable frame
- isolated wet and dry zones
- startup heat under operator control
- basic pressure, temperature, level, and product-quality instrumentation
- emergency stop and overpressure response

## Minimum Instrument Set

| Signal | Purpose |
|--------|---------|
| Shell pressure | tracks core operating point |
| Compressor inlet and outlet pressure | tracks compression health |
| Feed and product temperature | tracks recovery performance |
| Tank level | prevents dry-run events |
| Product conductivity | basic screening before any stronger claims |

## Frame Rules

- keep electronics above probable leak paths
- label every service valve
- leave wrench access around unions and clamps
- make sample collection possible while the machine is running

## OpenSling Bias

Use more structure and visibility than a polished commercial box would. Open hardware wins when the next builder can understand it quickly.

[^share]: [Shared ChatGPT conversation: “Slingshot Water Distillation Design”](https://chatgpt.com/share/69b4a167-cdac-8003-a53a-c5b64e4274a3).
