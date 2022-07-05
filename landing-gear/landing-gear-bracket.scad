include<../vars.scad>

module landingGearBracket() {
    translate([(-armBoxWidth - landingGearBracketWallThickness) / 2, (-armBoxWidth - landingGearBracketWallThickness) / 2, (-armBoxWidth - landingGearBracketWallThickness) / 2]) difference(){
        color(plaColor) cube(armBoxWidth + landingGearBracketWallThickness);
        translate([landingGearBracketWallThickness / 2, -0.5,landingGearBracketWallThickness / 2]) cube([armBoxWidth, armBoxWidth + landingGearBracketWallThickness + 1, armBoxWidth]);
    };
    translate([0, 0, ((-armBoxWidth - landingGearBracketWallThickness) / 2) - landingGearBracketSocketHeight]) difference(){
        color(plaColor) cylinder(h = landingGearBracketSocketHeight, d = (landingGearBracketSocketWallThickness * 2) + landingGearLegDia);
        translate([0, 0, -0.5]) cylinder(h = landingGearBracketSocketHeight + 1, d = landingGearLegDia);
    };
};
