include<../../vars.scad>

module centralBracketBottom(){
    color(plaColor)
    difference() {
        translate([-centralBracketBottomPlateSize / 2, -centralBracketBottomPlateSize / 2, -centralBracketBottomPlateThickness / 2])
        cube([centralBracketBottomPlateSize, centralBracketBottomPlateSize, centralBracketBottomPlateThickness]);

        translate([0, 0, -1]) cylinder(h = centralBracketBottomPlateThickness + 1, d = armFixingHoleDia);
    };

    rotate([0, 0, 45])
    translate([0, (centralBracketWallThickness / 2)  + (armBoxWidth / 2), -centralBracketDepth / 2])
    color(plaColor)
    difference() {
        translate([-25, -centralBracketWallThickness / 2, -centralBracketDepth / 2])
        cube([50, centralBracketWallThickness, centralBracketDepth]);

        translate([-armBoxWidth / 2, -centralBracketWallThickness, -armBoxWidth / 2])
        cube([armBoxWidth, centralBracketWallThickness + 1, armBoxWidth]);
    };

    rotate([0, 0, 45])
    translate([0, -(centralBracketWallThickness / 2) - (armBoxWidth / 2), -centralBracketDepth / 2])
    color(plaColor)
    difference() {
        translate([-25, -centralBracketWallThickness / 2, -centralBracketDepth / 2])
        cube([50, centralBracketWallThickness, centralBracketDepth]);

        translate([-armBoxWidth / 2, -centralBracketWallThickness, -armBoxWidth / 2])
        cube([armBoxWidth, centralBracketWallThickness + 1, armBoxWidth]);
    };

    rotate([0, 0, 135])
    translate([0, (centralBracketWallThickness / 2) + (armBoxWidth / 2), -centralBracketDepth / 2])
    color(plaColor)
    difference() {
        translate([-25, -centralBracketWallThickness / 2, -centralBracketDepth / 2])
        cube([50, centralBracketWallThickness, centralBracketDepth]);

        translate([-armBoxWidth / 2, -centralBracketWallThickness, -armBoxWidth / 2])
        cube([armBoxWidth, centralBracketWallThickness + 1, armBoxWidth]);
    };

    rotate([0, 0, 135])
    translate([0, -(centralBracketWallThickness / 2) - (armBoxWidth / 2), -centralBracketDepth / 2])
    color(plaColor)
    difference() {
        translate([-25, -centralBracketWallThickness / 2, -centralBracketDepth / 2]) 
        cube([50, centralBracketWallThickness, centralBracketDepth]);
    
        translate([-armBoxWidth / 2, -centralBracketWallThickness, -armBoxWidth / 2])
        cube([armBoxWidth, centralBracketWallThickness + 1, armBoxWidth]);
    };
};
