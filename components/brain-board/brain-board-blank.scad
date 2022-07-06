include<../../vars.scad>
include<../misc/standoff.scad>

module brainBoardBlank(){
    translate([-(brainBoardSize / 2), -(brainBoardSize / 2), -(brainBoardThickness / 2)])
    cube([brainBoardSize, brainBoardSize, brainBoardThickness]);

    translate([((brainBoardSize / 2) - 10), ((brainBoardSize / 2) - 10), 0])
    standoff(brainBoardSpace, 1, 3);

    translate([-((brainBoardSize / 2) - 10), ((brainBoardSize / 2) - 10), 0])
    standoff(brainBoardSpace, 1, 3);

    translate([((brainBoardSize / 2) - 10), -((brainBoardSize / 2) - 10), 0])
    standoff(brainBoardSpace, 1, 3);

    translate([-((brainBoardSize / 2) - 10), -((brainBoardSize / 2) - 10), 0])
    standoff(brainBoardSpace, 1, 3);
};

// brainBoardBlank();