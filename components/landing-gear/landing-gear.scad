include<../../vars.scad>
include<landing-gear-bracket.scad>
include<landing-gear-leg.scad>
include<landing-gear-foot.scad>

module landingGear(){
    translate([0, 0, landingGearFootThickness])
    landingGearLeg();

    landingGearFoot();

    translate([0, 0, landingGearLegLength + landingGearFootThickness + (armBoxWidth / 2) + landingGearBracketWallThickness])
    landingGearBracket();
};

// landingGear();