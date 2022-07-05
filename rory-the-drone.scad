include<vars.scad>
include<arm.scad>
include<./landing-gear/landing-gear.scad>

arm();
rotate([180, 0, 90]) arm();