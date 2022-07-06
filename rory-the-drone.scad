include<vars.scad>
include<./components/arm/arm.scad>
include<./components/landing-gear/landing-gear.scad>
include<./components/central-bracket-top/central-bracket-top.scad>
include<./components/central-bracket-bottom/central-bracket-bottom.scad>

arm();

rotate([180, 0, 90])
arm();

translate([landingGearSpacing, 0, -landingGearLegLength- (armBoxWidth / 2) - landingGearFootThickness - landingGearBracketWallThickness])
rotate([0, 0, 90])
landingGear();

translate([-landingGearSpacing, 0, -landingGearLegLength - (armBoxWidth / 2) - landingGearFootThickness - landingGearBracketWallThickness])
rotate([0, 0, 90])
landingGear();

translate([0, landingGearSpacing, -landingGearLegLength- (armBoxWidth / 2) - landingGearFootThickness - landingGearBracketWallThickness])
landingGear();

translate([0, -landingGearSpacing, -landingGearLegLength- (armBoxWidth / 2) - landingGearFootThickness - landingGearBracketWallThickness])
landingGear();

rotate([0, 0, 45])
translate([0, 0, (armBoxWidth / 2) + (centralBracketTopPlateThickness / 2)])
centralBracketTop();

rotate([180, 0, 45])
translate([0, 0, (armBoxWidth / 2) + (centralBracketBottomPlateThickness / 2)])
centralBracketBottom();