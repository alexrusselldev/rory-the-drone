include<../../vars.scad>

module landingGearBracket() {
    translate([(-armBoxWidth / 2) - landingGearBracketWallThickness, (-armBoxWidth / 2) - landingGearBracketSocketWallThickness, (-armBoxWidth / 2) -landingGearBracketSocketWallThickness]) difference(){
        color(plaColor) cube(armBoxWidth + landingGearBracketWallThickness * 2);
        translate([landingGearBracketWallThickness, -landingGearBracketWallThickness + 0.5, landingGearBracketWallThickness]) cube([armBoxWidth, armBoxWidth + (landingGearBracketWallThickness * 2) + 1, armBoxWidth]);
    };
    translate([0, 0, ((-armBoxWidth / 2) - landingGearBracketWallThickness) - landingGearBracketSocketHeight]) difference(){
        color(plaColor)
        cylinder(h = landingGearBracketSocketHeight, d = (landingGearBracketSocketWallThickness * 2) + landingGearLegDia);

        translate([0, 0, -0.5])
        cylinder(h = landingGearBracketSocketHeight + 1, d = landingGearLegDia);
    };
};

// landingGearBracket();