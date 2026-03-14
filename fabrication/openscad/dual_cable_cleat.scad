$fn = 64;

difference() {
  cube([52, 18, 10], center = true);
  for (x = [-13, 13]) {
    translate([x, 0, 0]) cylinder(h = 16, r = 4.2, center = true);
  }
  for (x = [-22, 22]) {
    translate([x, 0, 0]) cylinder(h = 16, r = 2.2, center = true);
  }
}
