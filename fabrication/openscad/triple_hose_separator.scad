$fn = 64;

difference() {
  cube([110, 28, 12], center = true);
  for (x = [-35, 0, 35]) {
    translate([x, 0, 0]) cylinder(h = 20, r = 6.6, center = true);
  }
  for (x = [-48, 48], y = [-8, 8]) {
    translate([x, y, 0]) cylinder(h = 20, r = 2.4, center = true);
  }
}
