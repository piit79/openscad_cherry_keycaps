// This module provides models of single Cherry profile keycaps
// in R1 - R4 profile and sizes 1u, 1.25u, 1.5u, 1.75u, 2u, 2.25u, 2.75u and 6.25u

module cherry(row, width) {
  rotate([90, 0, 0])
    import(str("cherry-mx-keycaps/STL/1x", width, " R", row, ".stl"));
}

module cherry_1u(row, colour=undef) {
  color(colour)
    translate([-235, -(4 - row)*25, 0])
      cherry(5 - row, 1);
}

module cherry_1_25u(row, colour=undef) {
  color(colour)
    translate([-210, -(4 - row)*25, 0])
      cherry(5 - row, 1.25);
}

module cherry_1_5u(row, colour=undef) {
  color(colour)
    translate([-180, -(4 - row)*25, 0])
      cherry(5 - row, 1.5);
}

module cherry_1_75u(row, colour=undef) {
  color(colour)
    translate([-145, -(4 - row)*25, 0])
      cherry(5 - row, 1.75);
}

module cherry_2u(row, colour=undef) {
  color(colour)
    translate([-105, -(4 - row)*25, 0])
      cherry(5 - row, 2);
}

module cherry_2_25u(row, colour=undef) {
  color(colour)
    translate([-60, -(4 - row)*25, 0])
      cherry(5 - row, 2.25);
}

module cherry_2_75u(row, colour=undef) {
  color(colour)
    translate([45, -(4 - row)*25, 0])
      cherry(5 - row, 2.75);
}

module cherry_6_25u(row, colour=undef) {
  dx = row == 4 ? 11.5 : 0;
  dy = row == 4 ? -100 : 0;
  color(colour)
    translate([dx, dy, 0])
      cherry(5 - row, 6.25);
}

module cherry_6_25u_space(colour=undef) {
  cherry_6_25u(4, colour);
}
