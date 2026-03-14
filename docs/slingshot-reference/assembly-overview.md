# OpenSling Assembly Overview

This is a high-level assembly guide for the current OpenSling reference distiller. It is inspired by the public Slingshot mechanism, but it is not presented as a factory clone or a certified potable-water product.

## Reference Build Scope

The current reference build assumes:

- a low-pressure vapor-compression distillation loop
- aggressive heat recovery on feed, product, and blowdown streams
- a custom frame plus pressure-bearing wet hardware
- removable non-pressure custom parts for routing, guarding, mounting, and instrumentation

## Before You Build

Do not start with contaminated water. First assemble and commission with clean water so that you can:

- pressure test the shell and fittings
- validate controls and shutdown logic
- characterize leaks and parasitic heat loss
- establish baseline pressure and temperature behavior

## Builder Flow

If your goal is to actually get parts on a bench instead of just reading theory, use this order:

1. Read the [Alpha Buy List and Missing Pieces](alpha-buy-list.md).
2. Order the `buy now` parts first. Those are the lowest-regret purchases in the current repo state.
3. Print or machine the non-pressure parts in the [Fabrication Pack](fabrication-pack.md).
4. Build the frame, drains, feed-side routing, and instrument mounts before buying the pressure core.
5. Hold the expensive geometry-dependent parts until the pressure shell, heater mount, and compressor operating point are frozen.
6. Hydrotest with water before any heated or dirty-water run.

The current OpenSling docs are honest about what is still missing. That is better than pretending a pressure vessel or heater package is already settled when it is not.

## Assembly Sequence

1. **Build the frame and mounting surfaces.**
   Mount the wet section low and the controls section high. Leave service clearance around the compressor, heater, knock-out pot, and sample ports.

2. **Assemble the feed, preheat, and blowdown loop.**
   Install the feed tank, coarse strainer, preheater, blowdown needle valve, drain routing, and collection vessel before the distillation core goes in.

3. **Assemble the evaporator/condenser core.**
   Build the main pressure shell, internal tube bundle, service ports, relief provisions, and insulation interface. Pressure-bearing parts require hydrotest before thermal commissioning.

4. **Install demister and mist protection upstream of compression.**
   Add the knock-out/demister stage between the steam chest and the compressor so entrained droplets do not become compressor damage.

5. **Mount the vapor-compression stage.**
   Install the side-channel/regenerative blower or chosen compressor with isolation mounts, a short service loop, and temperature/pressure instrumentation on both sides.

6. **Route the product condensation and recovery lines.**
   Direct condensed product into clean-side tubing, then through any polishing or storage-protection steps you plan to test.

7. **Install startup heat and controls.**
   Add the startup heater, contactor or relay hardware, level sensing, pressure sensing, and emergency stop logic. Keep wet and electrical zones visually separated.

8. **Fit custom support and routing parts.**
   Install the printed guards, cable guides, hose separators, panel blanks, and mounting brackets from the [Fabrication Pack](fabrication-pack.md) only after major hardware alignment is fixed.

9. **Hydrotest and leak-check.**
   Test the pressure boundary with water, not steam, first. Record pressures, dwell times, and any gasket movement.

10. **Commission with clean water, then move to dirty-water trials.**
   Establish stable startup, steady-state compression, blowdown control, and product routing before exposing the machine to fouling loads.

## Minimum Commissioning Data

- feed, shell, and compressor pressures
- steam-side and product-side temperatures
- startup time to stable production
- blowdown rate
- product conductivity or other basic quality screen
- treated volume before noticeable fouling or drift

## Build Philosophy

The goal is not to hide complexity inside a sealed box. The goal is to create a machine that can be opened, sampled, cleaned, modified, and understood by the next builder.
