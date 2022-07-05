include<vars.scad>
include<./components/arm/arm.scad>
include<./components/landing-gear/landing-gear.scad>
include<./components/central-bracket-top/central-bracket-top.scad>

arm();
rotate([180, 0, 90]) arm();

translate([landingGearSpacing, 0, -landingGearLegLength]) rotate([0, 0, 90]) landingGear();
translate([-landingGearSpacing, 0, -landingGearLegLength]) rotate([0, 0, 90]) landingGear();
translate([0, landingGearSpacing, -landingGearLegLength]) landingGear();
translate([0, -landingGearSpacing, -landingGearLegLength]) landingGear();
rotate([0, 0, 45])
translate([0, 0, (armBoxWidth / 2) + (centralBracketTopPlateThickness / 2)])
centralBracketTop();
