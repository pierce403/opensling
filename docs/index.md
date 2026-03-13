# OpenSling Wiki

<div class="hero">
  <h1>Build water-cleaning machines that can survive real field work.</h1>
  <p>OpenSling is a practical wiki for treatment trains, hardware modules, validation workflows, and operating practices that turn rough water into reliably cleaner output.</p>
</div>

<div class="signal-strip">
  <div class="signal-card">
    <strong>4</strong>
    <span>Core tracks: foundations, systems, builds, operations</span>
  </div>
  <div class="signal-card">
    <strong>3</strong>
    <span>Starter builds: bench prototype, pilot skid, reusable test rig</span>
  </div>
  <div class="signal-card">
    <strong>1</strong>
    <span>Rule that matters: every claim needs a measurement plan</span>
  </div>
</div>

## What This Wiki Is For

OpenSling focuses on **modular machines for cleaning water**, not abstract product marketing. The working assumption is that useful systems are:

- measurable in the field
- repairable with ordinary tools
- safe to operate around electricity, biohazards, and pressure
- explicit about what contaminants they do and do not address

<div class="feature-grid">
  <div class="feature-card">
    <h3>Treatment logic</h3>
    <p>Start with source water, contaminant classes, and staged removal instead of jumping straight to a single magic filter.</p>
  </div>
  <div class="feature-card">
    <h3>Module contracts</h3>
    <p>Define clean interfaces between intake, solids removal, fine filtration, disinfection, sensing, and power.</p>
  </div>
  <div class="feature-card">
    <h3>Buildable hardware</h3>
    <p>Prefer parts that can be sourced, serviced, and swapped without exotic fabrication.</p>
  </div>
  <div class="feature-card">
    <h3>Validation first</h3>
    <p>Every prototype should ship with sampling points, instrumentation, and a test plan.</p>
  </div>
</div>

## Start Here

1. Read [Mission and Scope](getting-started/mission-and-scope.md) to understand what OpenSling is trying to build.
2. Use [Design Principles](getting-started/design-principles.md) before drafting a new machine or subsystem.
3. Map your water source against [Contaminants and Constraints](foundations/contaminants.md).
4. Build from the [Treatment Train](foundations/treatment-train.md) rather than from a single component.
5. Pick a starting implementation from the [Build Guides](build-guides/bench-prototype.md).

## Reference Flow

The default machine pattern documented here is:

1. intake and coarse debris exclusion
2. bulk solids removal through settling, screening, or cyclone-style separation
3. fine filtration for suspended load reduction
4. adsorption or chemistry steps when dissolved contaminants matter
5. disinfection
6. clean storage, monitored output, and maintenance logging

<div class="callout-panel">
  <strong>Scope note:</strong> this wiki is an engineering workspace. It documents methods, tradeoffs, and validation practices, but any system intended for drinking water still needs source-specific testing, local regulatory review, and responsible operation.
</div>

## Current Priorities

- establish a robust bench prototype that is easy to instrument
- converge on a field pilot skid with standard plumbing and service loops
- create repeatable sampling and maintenance procedures
- track open research questions around cost, fouling, and contaminant-specific treatment
