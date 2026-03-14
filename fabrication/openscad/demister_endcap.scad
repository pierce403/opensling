$fn = 96;

difference() {
  cylinder(h = 6, r = 45, center = true);
  cylinder(h = 12, r = 26, center = true);
  for (p = [[0, 35], [35, 0], [0, -35], [-35, 0]]) {
    translate([p[0], p[1], 0]) cylinder(h = 12, r = 2.8, center = true);
  }
}
