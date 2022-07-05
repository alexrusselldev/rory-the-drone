include<../vars.scad>

module landingGearFoot(){
    color(plaColor) cylinder(h = landingGearFootThickness, d = landingGearFootDia);
    difference(){
        color(plaColor) cylinder(h = landingGearFootSocketHeight, d = landingGearFootSocketWallThickness * 2 + landingGearLegDia);
        cylinder(h = landingGearFootSocketHeight + 1, d = landingGearLegDia);
    };
};
