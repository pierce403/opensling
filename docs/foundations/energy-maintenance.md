# Energy and Maintenance Tradeoffs

Water treatment hardware is usually constrained by maintenance long before it is constrained by theory. Energy and service burden should be considered together.

## Tradeoff Table

| Choice | Strength | Cost |
|--------|----------|------|
| Larger pre-separation volume | reduces filter fouling | adds bulk and slower startup |
| Higher-pressure fine filtration | better particulate control | more pump power and more complex leak management |
| UV disinfection | no chemical residual | needs clear water, power, and lamp maintenance |
| Carbon polishing | improves taste and odor | consumable replacement and uncertain performance on all chemistries |
| Solar-backed system | off-grid operation | variable duty cycle and battery management overhead |

## Maintenance Reality

When comparing designs, ask:

- how often does an operator touch the machine?
- what parts clog first?
- can the service task be done without contaminating the clean side?
- how many tools are required?
- what happens if service is skipped for a week?

## Useful Biases

- spend volume and plumbing on upstream solids management
- keep consumables standardized
- make the dirty side physically obvious
- expose maintenance intervals as checklists, not tribal knowledge

## Power Budget Categories

| Category | Example loads |
|----------|---------------|
| Always on | controller, telemetry, low-power sensors |
| Duty cycled | pumps, valves, UV chamber |
| Rare events | flush solenoids, alarms, work lights |

Documenting the power budget alongside the maintenance budget makes it easier to design systems that actually stay deployed.
