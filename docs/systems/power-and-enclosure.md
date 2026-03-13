# Power and Enclosure

The machine enclosure and power system decide whether a design survives transport, weather, and operator abuse. Treat them as first-class engineering problems.

## Power Architecture

Start with a written list of loads and duty cycles:

- pumps
- controls and sensors
- UV or other disinfection loads
- valves or actuators
- communication hardware

## Practical Defaults

- use a common DC distribution voltage where possible
- separate noisy motor power from sensitive sensor wiring
- fuse modules individually
- label every connector that might be unplugged in the field

## Enclosure Design Rules

| Rule | Reason |
|------|--------|
| Keep electronics above probable leak paths | water always finds the lowest cable loop |
| Provide deliberate cable strain relief | transport vibration is unforgiving |
| Leave service clearance around filter housings | cartridge changes are routine, not edge cases |
| Vent or manage heat intentionally | sealed boxes and UV supplies can run hot |

## Environmental Considerations

- sun exposure and enclosure temperature
- splash, rain, and hose-down events
- mud and sediment on moving parts
- transport shock
- operator access with gloves or wet hands
