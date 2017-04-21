include<../src/ear.scad>
include<../src/rim.scad>
include<../src/symbol.scad>

symbSize = 30;
symbHeight = 2;
plateSize = 35;
plateRimWidth = 5;
plateBaseHeight = 4;
plateRimHeight = 2;

earSz = 2;

difference() {

    translate([0,0,plateBaseHeight])
    union() {
        symbol(symbSize,symbSize,symbHeight);
        
        translate([0,0,-plateBaseHeight/2]) 
        cube([plateSize,plateSize,plateBaseHeight], center = true);
        
        translate([0,0,plateRimHeight/2]) 
        difference() {
            cube([plateSize,plateSize,plateRimHeight], center = true);
            cube([plateSize - plateRimWidth,plateSize - plateRimWidth, plateRimHeight + 0.01], center = true);
        }
    }

    translate([plateSize/2,(plateSize - 10)/2,0])
    rotate([0,0,-90])
    linear_array(plateSize - 10, 3) 
    rotate([0,0,90])
    hide_ear(earSz);
    
    rotate([0,0,180])
    translate([plateSize/2,(plateSize - 10)/2,0])
    rotate([0,0,-90])
    linear_array(plateSize - 10, 3) 
    rotate([0,0,90])
    hide_ear(earSz);
}