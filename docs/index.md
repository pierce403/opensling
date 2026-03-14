# OpenSling Wiki

<div class="hero">
  <h1>Slingshot proved the signal. OpenSling is the open-source follow-through.</h1>
  <p>Dean Kamen’s Slingshot showed that low-power vapor-compression distillation could turn awful water into clean output. The public rollout never became the open, durable, globally reproducible hardware movement the problem still demands. OpenSling exists to publish the designs, assumptions, fabrication files, test plans, and failure notes anyway.</p>
</div>

<div class="signal-strip">
  <div class="signal-card">
    <strong>2006</strong>
    <span>Slingshot enters public view through Dean Kamen’s TED-era push.[^deka-history]</span>
  </div>
  <div class="signal-card">
    <strong>2012-2015</strong>
    <span>Coca-Cola and DEKA announce rollout targets, pilots, EKOCENTER scaling, and emergency deployments.[^coke-2012][^coke-2013][^deka-history]</span>
  </div>
  <div class="signal-card">
    <strong>2024</strong>
    <span>WHO and JMP still report extreme global burdens from unsafe water, poor sanitation, weak hygiene, cholera, schistosomiasis, and malaria-linked infrastructure stress.[^malaria-2025][^jmp-2025][^who-wash-2026][^who-drinking-water][^who-cholera][^who-schisto]</span>
  </div>
</div>

## Brief History Of Slingshot

The public Slingshot story is impressive and frustrating at the same time.

| Date | Publicly documented milestone | Why it mattered |
|------|-------------------------------|-----------------|
| 2006-2008 | Slingshot became widely known as a compact distillation machine aimed at making potable water from dirty sources. | It reframed water treatment as rugged field hardware instead of fragile aid equipment. |
| 25 September 2012 | Coca-Cola and DEKA announced a long-term partnership to deploy Slingshot systems in communities with limited potable water access.[^coke-2012] | This was the clearest public scale-up signal: up to 300,000 liters per unit per year, about 10 gallons per hour, and less than 1 kW of electricity. |
| 24 September 2013 | Coca-Cola’s EKOCENTER partnership expanded the ambition to 20 countries by the end of 2015, 1,500-2,000 units, and 500 million liters of safe drinking water.[^coke-2013] | Slingshot looked like it might become infrastructure instead of a demo. |
| 2011-2014 | DEKA’s own site documents pilots in Ghana, Paraguay, and South Africa.[^deka-history] | There was real field activity, not just stage presentations. |
| 2015 | DEKA says Slingshot units were deployed in Dominica after Tropical Storm Erika and provided water until local service returned.[^deka-history] | This showed emergency-response value. |
| 15 June 2016 | Coca-Cola’s flagship Rwanda EKOCENTER release highlighted Pentair reverse-osmosis units, not Slingshot, for safe-water production.[^coke-rwanda-2016] | The public story appears to shift from Slingshot-centered rollout to broader EKOCENTER operations with other water technologies. |

<div class="callout-panel">
  <strong>Inference, not a confirmed shutdown:</strong> as of <strong>March 13, 2026</strong>, the public Slingshot rollout trail I could verify is strongest from 2012 through 2015. Later public EKOCENTER material is still active, but the specific Slingshot-centered scale story becomes much harder to verify in public sources.[^coke-rwanda-2016][^deka-history]
</div>

## Why The Urgency Is Worse Now

OpenSling is not being built in a calmer world. The burden is still enormous:

| Problem | Latest sourced figure | Why it matters for OpenSling |
|---------|-----------------------|------------------------------|
| Malaria | WHO estimates <strong>282 million malaria cases</strong> and <strong>610,000 deaths</strong> in <strong>2024</strong>, about <strong>9 million more cases than 2023</strong>.[^malaria-2025] | Malaria is mosquito-borne, not water-borne, but stagnant water, weak drainage, and fragile infrastructure increase exposure and compound public-health stress. |
| Drinking water | <strong>2.1 billion</strong> people still lacked safely managed drinking water in <strong>2024</strong>, including <strong>106 million</strong> drinking untreated surface water.[^jmp-2025] | The water-access gap is still measured in billions, not edge cases. |
| Sanitation | <strong>3.4 billion</strong> people still lacked safely managed sanitation in <strong>2024</strong>, including <strong>354 million</strong> practicing open defecation.[^jmp-2025] | Water machines without sanitation awareness solve only part of the exposure chain. |
| Hygiene | <strong>1.7 billion</strong> people still lacked basic hygiene services at home in <strong>2024</strong>.[^jmp-2025] | Clean water output has to be paired with storage, handling, and hygiene practice. |
| Contaminated drinking water | WHO says at least <strong>1.7 billion</strong> people used a drinking-water source contaminated with faeces in <strong>2022</strong>, contributing to roughly <strong>505,000 diarrhoeal deaths</strong> each year.[^who-drinking-water] | This is the direct case for treatment hardware that is measurable and maintainable. |
| WASH-attributable mortality | WHO says unsafe water, sanitation, and hygiene still drive at least <strong>1.4 million preventable deaths</strong> per year.[^who-wash-2026] | The burden is still large enough to justify open infrastructure work, not just policy talk. |
| Cholera | WHO reported <strong>more than 560,000 cholera cases</strong> and <strong>over 6,000 deaths</strong> across <strong>60 countries</strong> in <strong>2024</strong>.[^who-cholera] | Outbreaks still surge where safe water and sanitation are weak. |
| Schistosomiasis | WHO estimates <strong>253.7 million</strong> people required preventive treatment in <strong>2024</strong>.[^who-schisto] | Water contact itself remains a major disease pathway in many regions. |

## Why OpenSling Exists

Slingshot proved that elegant water hardware was possible. OpenSling is here because the problem still exists and the designs still are not open enough.

<div class="feature-grid">
  <div class="feature-card">
    <h3>Open evidence</h3>
    <p>Every major claim should link back to a public source, a measurement plan, or both.</p>
  </div>
  <div class="feature-card">
    <h3>Open fabrication</h3>
    <p>Custom parts should ship with editable source files, exported meshes, and enough notes for another builder to reproduce them.</p>
  </div>
  <div class="feature-card">
    <h3>Open failure logs</h3>
    <p>Fouling, scaling, volatile carryover, leaks, and bad test results are part of the design record, not something to hide.</p>
  </div>
  <div class="feature-card">
    <h3>Open licensing</h3>
    <p>OpenSling documentation is intended for CC BY 4.0 reuse, while code and fabrication design sources remain Apache-2.0 by project norm.</p>
  </div>
</div>

## Start Here

1. Read [Public Specs and Shared-Thread Notes](slingshot-reference/known-specs.md) to see which Slingshot details are public, which came from the shared ChatGPT thread, and which remain inference.
2. Use [Alpha Buy List and Missing Pieces](slingshot-reference/alpha-buy-list.md) to see what you can responsibly order right now and what is still undefined.
3. Use [OpenSling Assembly Overview](slingshot-reference/assembly-overview.md) for the current reference-build sequence.
4. Work through the component pages before fabricating anything pressure-bearing or potable-water-facing.
5. Treat the current design as an open engineering baseline, not a certified drinking-water product.

## Sources

[^deka-history]: [DEKA Slingshot page](https://dekaresearch.com/slingshot/).
[^coke-2012]: [Coca-Cola Announces Long-Term Partnership with DEKA R&D to Help Bring Clean Water to Communities in Need, September 25, 2012](https://investors.coca-colacompany.com/news-events/press-releases/detail/333/coca-cola-announces-long-term-partnership-with-deka-rd-to-help-bring-clean-water-to-communities-in-need).
[^coke-2013]: [Coca-Cola Launches Global EKOCENTER Partnership to Deliver Safe Drinking Water and Basic Necessities to Rural Communities, September 24, 2013](https://investors.coca-colacompany.com/news-events/press-releases/detail/7/correcting-and-replacing-coca-cola-launches-global-ekocenter-partnership-to-deliver-safe-drinking-water-and-basic-necessities-to-rural-communities).
[^coke-rwanda-2016]: [Coca-Cola and Partners Create New Model for Social and Economic Development with Opening of Flagship EKOCENTER Site in Rwanda, June 15, 2016](https://investors.coca-colacompany.com/news-events/press-releases/detail/838/coca-cola-and-partners-create-new-model-for-social-and).
[^malaria-2025]: [WHO World malaria report 2025](https://www.who.int/teams/global-malaria-programme/reports/world-malaria-report-2025) and [WHO malaria fact sheet](https://www.who.int/news-room/fact-sheets/detail/malaria%E2%80%AF%E2%80%AF%E2%80%AF).
[^jmp-2025]: [WHO/UNICEF JMP 2025 household WASH progress report](https://washdata.org/reports/jmp-2025-wash-households) and [WHO/UNICEF summary news release, August 26, 2025](https://www.who.int/news/item/26-08-2025-1-in-4-people-globally-still-lack-access-to-safe-drinking-water---who--unicef).
[^who-drinking-water]: [WHO drinking-water fact sheet](https://www.who.int/news-room/fact-sheets/detail/drinking-water).
[^who-wash-2026]: [WHO water, sanitation, hygiene and waste strategy 2026-2035](https://www.who.int/publications/i/item/B09661).
[^who-cholera]: [WHO Global situation report for cholera, 2024](https://www.who.int/publications/i/item/who-wer10036-347-364).
[^who-schisto]: [WHO schistosomiasis fact sheet](https://www.who.int/news-room/fact-sheets/detail/schistosomiasis).
