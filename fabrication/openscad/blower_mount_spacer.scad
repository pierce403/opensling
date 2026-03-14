$fn = 64;

difference() {
  cube([60, 25, 12], center = true);
  for (x = [-20, 20]) {
    translate([x, 0, 0]) cylinder(h = 20, r = 3.4, center = true);
  }
}
