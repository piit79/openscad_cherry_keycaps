# Cherry profile keycaps for OpenSCAD
This repository contains [OpenSCAD](https://www.openscad.org/) module that provides models of individual
Cherry profile keycaps in R1 to R4 profile and sizes 1u, 1.25u, 1.5u, 1.75u,
2u, 2.25u, 2.75u and 6.25u.

All keycaps are currently centered (similar to specifying `center=true` on OpenSCAD primitives). The standard "bottom left corner at origin" positioning might be added later.

The actual models are taken from the [ConstantinoSchillebeeckx/cherry-mx-keycaps](https://github.com/ConstantinoSchillebeeckx/cherry-mx-keycaps/tree/thick-wall)
repository. All credit for the models goes to the original author.

## Usage
First, clone this repository into your OpenSCAD project (including submodule):
```
git clone --recursive https://github.com/piit79/openscad_cherry_keycaps.git
```

If you're tracking your project in Git, it's probably best to add this repository as a submodule:
```
git submodule add https://github.com/piit79/openscad_cherry_keycaps.git
git submodule update --init --recursive
```

Then, simply include the module in your project with the `use` keyword:
```
use <openscad_cherry_keycaps/cherry_keycaps.scad>;

for (row = [1:4])
  translate([0, 9.5 + (2 - row) * 19, 0])
    cherry_1u(row);
```
Note the usage of `use` instead of `include` to avoid evaluating example code present in the module.

You should get something like this:

![OpenSCAD Demo](https://github.com/piit79/openscad_cherry_keycaps/raw/master/images/openscad-demo.png)
