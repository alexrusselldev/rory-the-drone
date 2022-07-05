// arm main body

armLength = 500;
boxWidth = 10;
boxWallThickness = 1;

module armBoxSection(){
    translate([-armLength / 2, -boxWidth / 2,  -boxWidth / 2]) difference(){
        cube([armLength, boxWidth, boxWidth]);
        translate([-0.5, boxWallThickness, boxWallThickness]) cube([armLength + 1, boxWidth - 2 * boxWallThickness, boxWidth - 2 * boxWallThickness]);
    };
};

module armMatingSlot(){
    translate([-boxWidth / 2, -boxWidth / 2 - 1,  0]) cube([boxWidth, boxWidth + 2, boxWidth]);
};

module armCentralBoltHole(){
    boltHoleDia = 4;
    translate([0, 0, -boxWidth / 2 - 0.5]) cylinder(h = boxWallThickness + 1, d1 = boltHoleDia);
}

difference(){
    armBoxSection();
    armMatingSlot();
    armCentralBoltHole();
};