include<../../vars.scad>

module centralBracketTop(){
    color(plaColor)
    difference() {
        translate([-centralBracketTopPlateSize / 2, -centralBracketTopPlateSize / 2, -centralBracketTopPlateThickness / 2])
        cube([centralBracketTopPlateSize, centralBracketTopPlateSize, centralBracketTopPlateThickness]);

        translate([0, 0, -1]) cylinder(h = centralBracketTopPlateThickness + 1, d = armFixingHoleDia);
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
