module rim(externalRadius,internalRadius,height) {
    difference() {
        cylinder(r=externalRadius, h=height);
        cylinder(r=internalRadius, h=height+1);
    }
}

//Демонстрационный код.
//based_rim(30, 25, 8, 3);