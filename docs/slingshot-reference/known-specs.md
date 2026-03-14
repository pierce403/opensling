# Public Specs And Shared-Thread Notes

This page separates three different things:

1. public claims made by DEKA, Coca-Cola, Dartmouth, and WHO-linked reporting
2. working notes extracted from the shared ChatGPT thread you linked
3. OpenSling reconstruction choices made because the exact production design is not fully public

## What Is Publicly Documented

| Item | Shared-thread note | Public evidence | Assessment |
|------|--------------------|-----------------|------------|
| Treatment method | Vapor-compression distillation / mechanical vapor recompression | DEKA says Slingshot uses <strong>vapor compression distillation</strong>.[^deka] | Verified |
| Water sources | “Any dirty water,” including sewage | Coca-Cola’s 2012 release says the system can boil and evaporate river water, ocean water, and raw sewage, then condense pure water.[^coke-2012] | Verified public claim |
| Output | Around <strong>1000 L/day</strong> or <strong>10 gal/hour</strong> | Coca-Cola’s 2012 release and Dartmouth’s 2014 article both repeat about <strong>10 gallons of clean water an hour</strong>; Coca-Cola also states <strong>up to 300,000 liters per year</strong>.[^coke-2012][^dartmouth] | Verified public claim |
| Power draw | Roughly <strong>500 W to under 1 kW</strong> | Dartmouth and Coca-Cola both say <strong>less than 1 kW</strong>; the shared thread also mentioned a secondary-report figure of <strong>500 W</strong>.[^coke-2012][^dartmouth][^share] | `<1 kW` is public; `500 W` should be treated as secondary-report territory |
| Physical scale | About the size of a mini-bar fridge | Dartmouth describes it as equal to a hotel mini-bar fridge.[^dartmouth] | Verified public claim |
| Maintenance posture | Few moving parts, low ongoing maintenance | Dartmouth and DEKA describe low moving-part count and low maintenance needs.[^dartmouth][^deka] | Verified public claim |
| Core evaporator geometry | Copper tubes with plastic dowels making a thin film | DEKA’s public Slingshot page states that the evaporator uses copper tubes with plastic dowels to form a thin film.[^deka] | Verified |
| Pressure lift | Compressor raises steam from <strong>7 psi to 9 psi</strong> | DEKA states this directly on the public Slingshot page.[^deka] | Verified |
| Power-source flexibility | Grid, batteries, solar, or Stirling generation | Coca-Cola’s 2012 release explicitly mentions grid, batteries, solar cells, and DEKA’s Stirling generator powered by biogas.[^coke-2012] | Verified public claim |

## What The Shared Thread Added

The shared thread is useful because it pushed the public record into a more build-oriented interpretation:

- It identified the Slingshot concept as a <strong>water-vapor heat pump</strong>, not simple one-pass boiling.
- It treated the pressure lift as a <strong>small differential</strong> that makes latent-heat recycling plausible.
- It emphasized a <strong>counterflow heat exchanger</strong>, <strong>mist elimination before compression</strong>, and <strong>blowdown handling</strong> as essential pieces of the open design.[^share]
- It argued that an exact under-`$2000`, full-scale clone is not credible, but a lower-throughput open reference machine is more realistic.[^share]

## Where The Shared Thread Was Inference

Some details in the thread are best treated as engineering hypotheses, not verified Slingshot facts:

| Thread claim | Why it matters | Current status |
|--------------|----------------|----------------|
| Regenerative blower as the default compressor | Drives motor selection, noise, and moisture tolerance | Reasonable inference, but not fully confirmed as the only public production implementation |
| 1.5-2 psi preferred differential across the blower | Critical for compressor sizing | Supported by patent-family reasoning in the thread, but not stated on DEKA’s public marketing page |
| Three parallel 100 ft stainless coils in a pressurized shell | Strongly shapes the open build | This is an OpenSling design proposal, not a public Slingshot bill of materials |
| 600-800 L/day baseline, 1000 L/day stretch for a practical open build | Useful for scoping fabrication and testing | OpenSling design target, not a historical Slingshot spec |

## OpenSling Position

OpenSling is not pretending to possess the hidden factory drawings for Slingshot. The approach here is:

1. take the publicly documented mechanism seriously
2. preserve only the parts that are actually evidenced
3. make reconstruction choices explicit
4. publish enough design detail that another builder can improve the system

## Source Notes

[^deka]: [DEKA Slingshot page](https://dekaresearch.com/slingshot/).
[^coke-2012]: [Coca-Cola Announces Long-Term Partnership with DEKA R&D to Help Bring Clean Water to Communities in Need, September 25, 2012](https://investors.coca-colacompany.com/news-events/press-releases/detail/333/coca-cola-announces-long-term-partnership-with-deka-rd-to-help-bring-clean-water-to-communities-in-need).
[^dartmouth]: [One Man’s Attempt to Solve the World’s Water Problem, Dartmouth, August 27, 2014](https://home.dartmouth.edu/news/2014/08/one-mans-attempt-solve-worlds-water-problem).
[^share]: [Shared ChatGPT conversation: “Slingshot Water Distillation Design”](https://chatgpt.com/share/69b4a167-cdac-8003-a53a-c5b64e4274a3).
