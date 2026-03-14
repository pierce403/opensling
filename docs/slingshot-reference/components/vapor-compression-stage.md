# Vapor Compression Stage

The vapor compression stage is what makes the energy story believable. Instead of discarding the latent heat of evaporation, the machine lifts vapor pressure and temperature slightly so condensation can reheat the next cycle.

## Public Basis

DEKA publicly states that the compressor raises the steam from <strong>7 psi to 9 psi</strong>.[^deka]

The shared thread interprets the Slingshot concept as a low-lift mechanical vapor recompression system and treats that small pressure jump as the critical reason the machine can work at low electrical input.[^share]

## OpenSling Reference Choice

For the current open build, the default assumption is a serviceable low-pressure compressor stage with:

- a side-channel or regenerative blower for the first build cycle
- upstream droplet separation
- suction and discharge temperature sensing
- suction and discharge pressure sensing
- vibration isolation mounts

## Why This Module Matters

If the compressor is oversized, the system wastes power and overheats the loop. If it is undersized, the temperature lift is too small and throughput collapses.

## What To Watch

- suction wetness or droplet carryover
- discharge temperature rise
- blower power draw
- pressure differential stability at steady state
- acoustic signature changes that suggest fouling or water ingestion

## Failure Modes

- moisture ingestion damaging the blower
- thermal overload from poor venting or bad operating point
- unstable pressure oscillation when boiling behavior changes

## Design Rule

Protect the compressor from liquid. A cheap compressor becomes an expensive bottleneck once it sees droplets instead of dry vapor.

[^deka]: [DEKA Slingshot page](https://dekaresearch.com/slingshot/).
[^share]: [Shared ChatGPT conversation: “Slingshot Water Distillation Design”](https://chatgpt.com/share/69b4a167-cdac-8003-a53a-c5b64e4274a3).
