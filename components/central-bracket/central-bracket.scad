include<../../vars.scad>

module centralBracket(){
    difference(){
        color(carbonColor)
        union() {
            translate([-(centralBracketPlateSize / 2), -(armBoxWidth / 2), -(centralBracketPlateThickness / 2)])
            cube([centralBracketPlateSize, armBoxWidth, centralBracketPlateThickness]);

            translate([-(armBoxWidth / 2), -(centralBracketPlateSize / 2), -(centralBracketPlateThickness / 2)])
            cube([armBoxWidth, centralBracketPlateSize, centralBracketPlateThickness]);
        };

        // holes for arm mounting points
        translate([0, 20, -1])
        cylinder(h = 22, d = 3);

        translate([0, -20, -1])
        cylinder(h = 22, d = 3);

        translate([20, 0, -1])
        cylinder(h = 22, d = 3);

        translate([-20, 0, -1])
        cylinder(h = 22, d = 3);
    };
};

centralBracket();