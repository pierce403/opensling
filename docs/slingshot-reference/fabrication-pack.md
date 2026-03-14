# Fabrication Pack

The fabrication pack covers the custom <strong>non-pressure</strong> parts currently defined in the open reference build. It does <strong>not</strong> claim that the pressure shell, heat-exchanger bundle, compressor internals, or mains-power enclosure are fabrication-ready.

## What Is Included

| Part | Purpose | Files |
|------|---------|-------|
| Control panel blank | Generic front panel for gauges, labels, and later cutouts | `fabrication/openscad/control_panel_blank.scad`, `fabrication/stl/control_panel_blank.stl` |
| Triple hose separator | Keeps three process lines aligned and serviceable outside the hot pressure boundary | `fabrication/openscad/triple_hose_separator.scad`, `fabrication/stl/triple_hose_separator.stl` |
| Blower mount spacer | Raises or levels the compressor/blower base during fit-up | `fabrication/openscad/blower_mount_spacer.scad`, `fabrication/stl/blower_mount_spacer.stl` |
| Demister endcap | Non-pressure retainer for a removable demister cartridge concept | `fabrication/openscad/demister_endcap.scad`, `fabrication/stl/demister_endcap.stl` |
| Dual cable cleat | Strain-relieved routing for control or low-voltage sensor lines | `fabrication/openscad/dual_cable_cleat.scad`, `fabrication/stl/dual_cable_cleat.stl` |

## What Is Intentionally Not Included Yet

- pressure-shell weldments
- evaporator/condenser tube bundle metal drawings
- gasket specifications for potable certification
- mains-power enclosure cutouts and certified electrical assemblies
- any claim that the current meshes are sufficient for drinking-water deployment

## Source Of Truth

The editable source files are kept in `fabrication/openscad/`, while the exported meshes are kept in `fabrication/stl/`. STL exports can be regenerated with:

```bash
source venv/bin/activate
python fabrication/generate_assets.py
```

## Safety Boundary

These assets are for brackets, blanks, separators, and retainers. They are not substitutes for pressure-vessel design, high-temperature materials validation, or regulatory compliance.
