# Treatment Train

A treatment train is a sequence of modules, each doing one job well enough that the next stage can work reliably. OpenSling assumes staged treatment is easier to debug and maintain than all-in-one boxes.

## Baseline Treatment Sequence

1. **Intake and exclusion**: keep large debris and air ingestion out of the pump path.
2. **Bulk solids reduction**: remove heavy particulate load early to protect downstream stages.
3. **Fine filtration**: reduce suspended solids to a level the final treatment stages can tolerate.
4. **Conditioning or adsorption**: use when dissolved contaminants, taste, or odor matter.
5. **Disinfection**: reduce biological risk with a method matched to flow, clarity, and power.
6. **Protected storage**: prevent recontamination after treatment.

## Why the Order Matters

Disinfection works better when turbidity is already reduced. Carbon lasts longer when solids are already managed. Pumps and sensors behave better when intake debris is controlled. The sequence is not arbitrary.

## Module Selection Questions

| Stage | Decide this first | Typical options |
|-------|-------------------|-----------------|
| Intake | How dirty is the source mechanically? | basket strainer, screened foot valve, settling inlet |
| Solids removal | Is the load mostly heavy grit or fine suspended solids? | settling tank, swirl separator, hydrocyclone, bag filter |
| Fine filtration | What pressure drop and consumable budget are acceptable? | sediment cartridges, membrane modules |
| Adsorption | Are organics, chlorine byproducts, or odors a concern? | activated carbon block, granular carbon |
| Disinfection | What contact time and power budget are available? | UV-C, chlorination, ozone in specialized cases |

## Design Hint

Place sample points and pressure gauges around the stages that are most likely to foul. A treatment train without observability becomes guesswork fast.
