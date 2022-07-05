include<vars.scad>
include<arm.scad>
include<./landing-gear/landing-gear.scad>

arm();
rotate([180, 0, 90]) arm();

translate([landingGearSpacing, 0, -landingGearLegLength]) rotate([0, 0, 90]) landingGear();
translate([-landingGearSpacing, 0, -landingGearLegLength]) rotate([0, 0, 90]) landingGear();
translate([0, landingGearSpacing, -landingGearLegLength]) landingGear();
translate([0, -landingGearSpacing, -landingGearLegLength]) landingGear();
