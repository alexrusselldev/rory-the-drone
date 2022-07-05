include<../../vars.scad>

module landingGearLeg(){
    difference(){    
        color(carbonColor) cylinder(h = landingGearLegLength, d = landingGearLegDia);
        translate([0, 0, -0.5]) cylinder(h = landingGearLegLength + 1, d = landingGearLegDia - landingGearLegWallThickness * 2);
    };
};
