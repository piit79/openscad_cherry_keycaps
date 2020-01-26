/*
This module provides models of single Cherry profile keycaps
in R1 to R4 profile and sizes 1u, 1.25u, 1.5u, 1.75u, 2u, 2.25u, 2.75u and 6.25u

The actual models are taken from the ConstantinoSchillebeeckx/cherry-mx-keycaps repository
(https://github.com/ConstantinoSchillebeeckx/cherry-mx-keycaps/tree/thick-wall).
All credit for the models goes to the original author.
*/

// STL model X offsets by keycap width
x_offsets = [
  [1,    -235],
  [1.25, -210],
  [1.5,  -180],
  [1.75, -145],
  [2,    -105],
  [2.25,  -60],
  [6.25,    0],
];

function dict_get(dict, key) = dict[search(key, dict)[0]][1];

module cherry(width, row, colour=undef) {
  stl_row = 5 - row;
  dx = (width == 6.25 && row == 4) ? 11.5 : dict_get(x_offsets, width);
  dy = (width == 6.25) ? ((row == 4) ? -100 : 0) : -(4 - row)*25;
  color(colour)
    translate([dx, dy, 0])
      rotate([90, 0, 0])
        import(str("cherry-mx-keycaps/STL/1x", width, " R", stl_row, ".stl"));
}


// Example usage
for (row = [1:4])
  translate([0, 9.5 + (2 - row) * 19, 0])
    cherry(1, row);
