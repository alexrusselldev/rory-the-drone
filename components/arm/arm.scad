include<../../vars.scad>
// arm main body


module armBoxSection(){
    translate([-armLength / 2, -armBoxWidth / 2,  -armBoxWidth / 2]) difference(){
        color(carbonColor) cube([armLength, armBoxWidth, armBoxWidth]);
        translate([-0.5, armBoxWallThickness, armBoxWallThickness]) cube([armLength + 1, armBoxWidth - 2 * armBoxWallThickness, armBoxWidth - 2 * armBoxWallThickness]);
    };
};

module armMatingSlot(){
    translate([-armBoxWidth / 2, -armBoxWidth / 2 - 1,  0]) cube([armBoxWidth, armBoxWidth + 2, armBoxWidth]);
};

module armCentralBoltHole(){
    translate([0, 0, -armBoxWidth / 2 - 0.5]) cylinder(h = armBoxWallThickness + 1, d1 = armFixingHoleDia);
}

module arm() {
    difference(){
        armBoxSection();
        armMatingSlot();
        armCentralBoltHole();

        // holes for central bracket mounting hardware
        translate([0, 20, -10])
        cylinder(h = armBoxWidth + 20, d = 3);

        translate([0, -20, -10])
        cylinder(h = armBoxWidth + 20, d = 3);

        translate([20, 0, -10])
        cylinder(h = armBoxWidth + 20, d = 3);

        translate([-20, 0, -10])
        cylinder(h = armBoxWidth + 20, d = 3);
    }
};