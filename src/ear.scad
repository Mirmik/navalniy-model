module ear(length, elength, width, ewidth, height) {
    translate([-length/2,0,0])
    difference() {
        fill_length = length - elength;
        cube([length,width,height]);
        translate([fill_length/2,0,0]) cube([elength,ewidth,height]);
    }
}

module radiused_ear(length, elength, width, ewidth, height, radius) {
    xstate = length / 2;
    ystate = sqrt(radius*radius - xstate*xstate); 
    
    translate([0,ystate,0])
        ear(length, elength, width, ewidth, height);
}