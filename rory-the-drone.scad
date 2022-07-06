include<vars.scad>
include<./components/arm/arm.scad>
include<./components/landing-gear/landing-gear.scad>
include<./components/central-bracket/central-bracket.scad>
include<./components/brain-board/brain-board-blank.scad>

arm();

rotate([180, 0, 90])
arm();

// landing gear
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


// top and bottom central brackets
translate([0, 0, (armBoxWidth / 2) + (centralBracketTopPlateThickness / 2)])
centralBracket();

translate([0, 0, (armBoxWidth / 2) + (centralBracketPlateThickness / 2)])
centralBracket();

// brain board
rotate([0, 0, 45])
translate([0, 0, -(armBoxWidth / 2) - brainBoardSpace])
brainBoardBlank();