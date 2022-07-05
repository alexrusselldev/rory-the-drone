include<vars.scad>
include<arm.scad>
include<./landing-gear/landing-gear.scad>

color(armColor) arm();
rotate([180, 0, 90]) color(armColor) arm();