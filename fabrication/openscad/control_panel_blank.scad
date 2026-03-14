$fn = 64;

difference() {
  cube([160, 120, 6], center = true);
  for (x = [-70, 70], y = [-50, 50]) {
    translate([x, y, 0]) cylinder(h = 12, r = 2.8, center = true);
  }
}
