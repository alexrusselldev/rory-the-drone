include<../vars.scad>

module landingGearLeg(){
    difference(){    
        cylinder(h = landingGearLegLength, d = landingGearLegWidth);
        translate([0, 0, -0.5]) cylinder(h = landingGearLegLength + 1, d = landingGearLegWidth - landingGearLegWallThickness * 2);
    };
};
