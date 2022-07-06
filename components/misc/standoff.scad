include<../vars.scad>

module standoff(height, wallThickness, boltDia){
    difference(){
        cylinder(h = height, d = boltDia + (wallThickness * 2));

        translate([0, 0, -1])
        cylinder(h = height + 2, d = boltDia);
    }
};

// standoff(20, 1, 5);