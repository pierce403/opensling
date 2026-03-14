# Alpha Buy List And Missing Pieces

`BOM-ALPHA-2026-03-13A`

This page is the current builder-facing purchasing path for the first OpenSling distiller alpha. It is a bench-oriented, non-potable, low-pressure reference build, not a production machine and not a certified drinking-water product.

Price snapshot date: **March 13, 2026**  
Currency: **USD**  
Prices below exclude shipping, tax, duties, and any bulk-order discounts.

## Scope Of This BOM

This revision assumes:

- gravity feed or a simple elevated source tank during first commissioning
- `1.5 in.` sanitary clamp hardware on the external low-pressure wet loop
- manual logging during first clean-water runs
- non-pressure printed parts coming from the current repo fabrication pack

This revision does **not** assume:

- a finalized pressure-shell weldment
- a finalized internal tube bundle or film-forming insert geometry
- a code-stamped vessel relief package
- a finalized heater mount or control enclosure
- a finalized compressor power architecture

## Build Path

1. Order the `buy now` parts on this page.
2. Build the frame and accessible low-pressure plumbing around those parts.
3. Print the current non-pressure repo parts from the [Fabrication Pack](fabrication-pack.md).
4. Freeze the pressure-core geometry and sensor-port pattern.
5. Only then order the `hold until geometry freeze` items.
6. Commission with clean water first, then move to dirty-water testing.

## Buy Now

These parts are useful even if the pressure core changes later. They are the lowest-regret purchases in the repo right now.

| Item | Example source | Qty | Unit price | Extended | Why this is low-regret |
|------|----------------|-----|------------|----------|------------------------|
| Frame channel, 10 ft, 12 ga | [Superstrut ZA1200HS-10](https://www.homedepot.com/p/Superstrut-10-ft-12-Gauge-Half-Slotted-Metal-Framing-Strut-Channel-in-Gold-Galvanized-ZA1200HS-10-ZA1200HS-10/100125003) | 4 | $43.65 | $174.60 | Gives a serviceable bench frame before the wet core is frozen. |
| Portable inline GFCI | [ELEGRP G20CA-2FT](https://www.homedepot.com/p/ELEGRP-2-ft-15-Amp-In-Line-Self-Test-Automatic-Reset-Portable-GFCI-Plug-with-3-Outlet-Cord-Yellow-G20CA-2FT/320391610) | 1 | $33.60 | $33.60 | Mandatory bench-power protection for early heated runs. |
| Sanitary tee, `1.5 in.` clamp x clamp x clamp | [Hamby tee](https://hambydairysupply.com/1-5-tee-clamp-x-clamp-x-clamp-stainless-steel/) | 2 | $52.00 | $104.00 | Useful for drain, demister, and sample-routing experiments. |
| Sanitary spool, `1.5 in.` x `6 in.` | [Hamby spool tube](https://hambydairysupply.com/1-5-inch-tubing-x-6-inch-length-sanitary-spool-tube/) | 4 | $34.60 | $138.40 | Flexible straight sections for mock-up and rebuilds. |
| Butterfly valve, `1.5 in.` clamp x clamp | [Hamby butterfly valve](https://hambydairysupply.com/1-5-inch-butterfly-valve-clamp-x-clamp/) | 2 | $79.99 | $159.98 | Useful for manual isolate/drain work even if the final core changes. |
| Basic sanitary clamp, `1.5 in.` | [Hamby clamp](https://hambydairysupply.com/1-5-basic-triclamp-style-pipeline-clamp/) | 12 | $8.15 | $97.80 | Core commodity hardware for any `1.5 in.` sanitary mock-up. |
| Silicone flange gasket, `1.5 in.` | [Hamby silicone gasket](https://hambydairysupply.com/1-5-inch-clamp-silicone-flange-gasket/) | 20 | $1.99 | $39.80 | Better high-temperature margin than cheap Buna placeholders. |
| Clamp x `1.5 in.` male NPT adapter | [Hamby adapter](https://hambydairysupply.com/1-5-inch-clamp-x-1-5-male-national-pipe-thread-adapter/) | 2 | $48.00 | $96.00 | Bridges sanitary sections to utility plumbing without locking the final shell design. |
| End cap with pipe for `3/4 in.` transfer hose | [Hamby hose end cap](https://hambydairysupply.com/end-cap-with-pipe-for-3-4-inch-transfer-hose/) | 2 | $24.88 | $49.76 | Useful for feed/product routing and temporary reservoir work. |
| `3/4 in.` transfer hose | [Hamby transfer hose](https://hambydairysupply.com/3-4-inch-outlet-transfer-hose/) | 10 ft | $16.00/ft | $160.00 | Good for cool-side feed, drain, and product routing. Do not treat it as a steam-hose substitute. |
| Mechanical pressure gauge, `0-30 psi` | [AutomationDirect G15-BD30-8CB](https://www.automationdirect.com/pn/G15-BD30-8CB) | 3 | $11.50 | $34.50 | Cheap enough to put on shell, suction, and discharge during manual commissioning. |
| Conductivity/TDS/temperature tester | [Milwaukee EC60 PRO](https://milwaukeeinstruments.com/EC60-PRO-Waterproof-EC-TDS-Temperature-Tester) | 1 | $77.90 | $77.90 | Fast screening tool for product-water trends during alpha testing. |
| Conductivity calibration solution | [Milwaukee MA9065](https://milwaukeeinstruments.com/MA9065-230ml-1413-uS-cm-Conductivity-Calibration-Solution) | 1 | $16.70 | $16.70 | Keeps the EC/TDS tester honest. |
| Compact float switch | [AutomationDirect FLS-HM-100](https://www.automationdirect.com/pn/FLS-HM-100) | 1 | $25.00 | $25.00 | Simple feed-tank low-level interlock before the full controls stack exists. |

**Buy-now subtotal:** **$1,208.04**

## Hold Until Geometry Freeze

These parts are plausible candidates, but the repo is not ready to tell someone to order them blindly.

| Item | Example source | Qty | Unit price | Hold reason |
|------|----------------|-----|------------|-------------|
| Regenerative blower, `0.5 hp`, `52 cfm`, `43 in. wc` | [GAST 33K820](https://www.grainger.com/product/GAST-Regenerative-Blower-33K820) | 1 | $1,298.35 | Current readily priced candidate is `208-230/460 VAC` three-phase. Do not buy until power architecture and operating point are frozen. |
| Blower-side relief valve | [GAST AJ496 / Grainger 860DM9](https://www.grainger.com/product/GAST-Pressure-Relief-Valve-860DM9) | 1 | $414.35 | Only relevant if the matching blower is chosen. This is not a substitute for a code-appropriate vessel PSV. |
| Temperature controller | [AutomationDirect SL4824-RR](https://www.automationdirect.com/pn/SL4824-RR) | 1 | $125.00 | Useful, but heater style and control architecture are not frozen yet. |
| RTD probe, `Pt100`, `12 in.` probe, `1/2 in.` NPT | [AutomationDirect RTD1-C12-01](https://www.automationdirect.com/pn/RTD1-C12-01) | 3 | $103.00 | Port depth and exact insertion lengths are not frozen. |
| DIN solid-state relay, `40 A` | [AutomationDirect GRSH-40-60-D-0-0](https://www.automationdirect.com/pn/GRSH-40-60-D-0-0) | 1 | $108.00 | Only buy after the heater current, enclosure, and cooling arrangement are defined. |
| Maintained emergency-stop operator | [AutomationDirect AR22Q2R-01R](https://www.automationdirect.com/pn/AR22Q2R-01R) | 1 | $29.00 | Good part, but the panel layout and final dry-zone build are still open. |

**Hold subtotal:** **$2,283.70**

## Missing Pieces

These are not just “shopping TBD” items. They are actual design gaps in the current repo.

| Missing piece | Why it is missing | What unblocks it |
|---------------|-------------------|------------------|
| Pressure-shell drawing | No validated shell diameter, wall thickness, ferrule pattern, or weld notes are published yet. | Freeze core geometry and publish a pressure-boundary drawing set plus hydrotest target. |
| Tube bundle and insert geometry | The repo explains the thin-film concept, but it does not yet define tube count, length, insert material, or cleaning method. | Bench heat-transfer and fouling tests on one or two candidate bundle layouts. |
| Startup heater package | Watt density, mount style, and material compatibility are still open. | Freeze shell geometry and pick a heater that will not scorch or overstress the wall. |
| Vessel overpressure protection | There is no final PSV spec or setpoint tied to a validated pressure boundary. | Complete pressure-boundary calculations and select a code-appropriate relief path. |
| Final compressor choice | Public Slingshot pressure numbers exist, but the open build still lacks a validated blower/compressor map for the chosen core. | Run a bench model or instrumented rig that confirms the needed pressure lift and vapor flow. |
| Sensor-port pattern | Gauge ports, thermowells, and sample ports are still described conceptually instead of dimensionally. | Publish a port map with thread standards and no-tool service access notes. |
| Electrical panel and wiring | There is no finished wiring diagram, enclosure cut sheet, or field-safe service layout. | Freeze the heater, blower, sensor count, and shutdown chain. |
| Potable claim pathway | Distillation helps, but the repo does not yet define validation, post-treatment, or source-specific test criteria. | Add a commissioning and validation protocol with contaminant-specific testing rules. |
| Feed pre-strainer package | The repo references coarse pre-straining, but it does not yet freeze the micron target, housing size, or whether the strainer sits before or after any lift pump. | Pick the alpha source-water envelope and publish the dirty-side plumbing layout. |
| Full fastener list | The repo does not yet define the exact frame dimensions, brackets, casters, or panel mounts. | Freeze the frame layout and publish a frame drawing or cut list. |

## What You Can Fabricate From The Repo Today

The current repo can already generate these custom **non-pressure** parts:

- control panel blank
- triple hose separator
- blower mount spacer
- demister endcap
- dual cable cleat

Those files live in the [Fabrication Pack](fabrication-pack.md). They are useful, but they do **not** close the pressure-core, heater, or electrical gaps listed above.

## Why The Vendor Mix Looks Uneven

This BOM is intentionally “Amazon or whatever,” not “Amazon only.” The current picks skew toward:

- Home Depot for bench-power safety and basic frame stock
- Hamby for sanitary dairy-process hardware that is easy to reconfigure
- AutomationDirect for controls and instrumentation
- Milwaukee for a simple field-grade conductivity screen
- Grainger for industrial blower candidates

That mix is deliberate. The goal is not retail convenience. The goal is to make the first alpha build more likely to work.
