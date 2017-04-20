module rim(er, ir, h) {
    difference() {
        cylinder(r=er, h=h);
        cylinder(r=ir, h=h);
    }
}

//Круговая база с ободком.
module based_rim(er, ir, h, bh) {
    union() {
        cylinder(r=er, h=bh);
        translate([0,0,bh]) rim(er,ir,h-bh);
    }
}


//Демонстрационный код.
//based_rim(30, 25, 8, 3);