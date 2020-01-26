# Cherry profile keycaps for OpenSCAD
This repository contains [OpenSCAD](https://www.openscad.org/) module that provides models of individual
Cherry profile keycaps in R1 to R4 profile and sizes 1u, 1.25u, 1.5u, 1.75u,
2u, 2.25u, 2.75u and 6.25u.

The actual models are taken from the [ConstantinoSchillebeeckx/cherry-mx-keycaps](https://github.com/ConstantinoSchillebeeckx/cherry-mx-keycaps/tree/thick-wall)
repository. All credit for the models goes to the original author.

## Usage
First, clone this repository into your OpenSCAD project (including submodule):
```
git clone --recursive https://github.com/piit79/openscad_cherry_keycaps.git
```

If you're tracking your project in Git, the better approach is to
add this repository as a submodule:
```
git submodule add https://github.com/piit79/openscad_cherry_keycaps.git
```

Then, simply use the module in your project and start using it:
```
use <openscad_cherry_keycaps/cherry_keycaps.scad>;

for (row = [1:4])
  translate([0, 9.5 + (2 - row) * 19, 0])
    cherry_1u(row);
```

This is what you should get:

![OpenSCAD Demo](https://github.com/piit79/openscad_cherry_keycaps/raw/master/images/openscad-demo.png)
