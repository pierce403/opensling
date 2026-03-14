#!/usr/bin/env python3

from pathlib import Path

import trimesh
from trimesh.boolean import difference
from trimesh.creation import box, cylinder


ROOT = Path(__file__).resolve().parent
STL_DIR = ROOT / "stl"


def centered_box(x, y, z):
    return box(extents=[x, y, z])


def z_cylinder(radius, height, x=0.0, y=0.0):
    mesh = cylinder(radius=radius, height=height, sections=64)
    mesh.apply_translation([x, y, 0.0])
    return mesh


def cut(mesh, cutters):
    return difference([mesh, *cutters], engine="manifold")


def export(name, mesh):
    STL_DIR.mkdir(parents=True, exist_ok=True)
    mesh.export(STL_DIR / f"{name}.stl")


def control_panel_blank():
    plate = centered_box(160.0, 120.0, 6.0)
    holes = [
        z_cylinder(2.8, 12.0, x, y)
        for x in (-70.0, 70.0)
        for y in (-50.0, 50.0)
    ]
    return cut(plate, holes)


def triple_hose_separator():
    body = centered_box(110.0, 28.0, 12.0)
    hose_holes = [z_cylinder(6.6, 20.0, x, 0.0) for x in (-35.0, 0.0, 35.0)]
    mount_holes = [z_cylinder(2.4, 20.0, x, y) for x in (-48.0, 48.0) for y in (-8.0, 8.0)]
    return cut(body, hose_holes + mount_holes)


def blower_mount_spacer():
    body = centered_box(60.0, 25.0, 12.0)
    holes = [z_cylinder(3.4, 20.0, x, 0.0) for x in (-20.0, 20.0)]
    return cut(body, holes)


def demister_endcap():
    cap = z_cylinder(45.0, 6.0)
    center = z_cylinder(26.0, 12.0)
    bolt_holes = [
        z_cylinder(2.8, 12.0, x, y)
        for x, y in ((0.0, 35.0), (35.0, 0.0), (0.0, -35.0), (-35.0, 0.0))
    ]
    return cut(cap, [center, *bolt_holes])


def dual_cable_cleat():
    body = centered_box(52.0, 18.0, 10.0)
    cable_holes = [z_cylinder(4.2, 16.0, x, 0.0) for x in (-13.0, 13.0)]
    screw_holes = [z_cylinder(2.2, 16.0, x, 0.0) for x in (-22.0, 22.0)]
    return cut(body, cable_holes + screw_holes)


PARTS = {
    "control_panel_blank": control_panel_blank,
    "triple_hose_separator": triple_hose_separator,
    "blower_mount_spacer": blower_mount_spacer,
    "demister_endcap": demister_endcap,
    "dual_cable_cleat": dual_cable_cleat,
}


def main():
    for name, builder in PARTS.items():
        export(name, builder())
        print(f"wrote {name}.stl")


if __name__ == "__main__":
    main()
