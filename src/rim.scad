module rim(er, ir, h) {
    difference() {
        cylinder(r=er, h=h);
        cylinder(r=ir, h=h);
    }
}

module based_rim(er, ir, h, bh) {
    union() {
        cylinder(r=er, h=bh);
        translate([0,0,bh]) rim(er,ir,h-bh);
    }
}
