include<../vars.scad>

module landingGearFoot(){
    cylinder(h = landingGearFootThickness, d = landingGearFootDia);
    difference(){
        cylinder(h = landingGearFootSocketHeight, d = landingGearFootSocketWallThickness * 2 + landingGearLegDia);
        cylinder(h = landingGearFootSocketHeight + 1, d = landingGearLegDia);
    };
};
