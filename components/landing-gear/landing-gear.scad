include<../../vars.scad>
include<landing-gear-bracket.scad>
include<landing-gear-leg.scad>
include<landing-gear-foot.scad>

module landingGear(){
    landingGearLeg();
    landingGearFoot();
    translate([0, 0, landingGearLegLength]) landingGearBracket();
};
