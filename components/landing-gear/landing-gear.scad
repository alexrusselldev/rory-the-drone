include<../../vars.scad>
use<landing-gear-bracket.scad>
use<landing-gear-leg.scad>
use<landing-gear-foot.scad>

module landingGear(){
    translate([0, 0, landingGearFootThickness])
    landingGearLeg();

    landingGearFoot();

    translate([0, 0, landingGearLegLength + landingGearFootThickness + (armBoxWidth / 2) + landingGearBracketWallThickness])
    landingGearBracket();
};

landingGear();