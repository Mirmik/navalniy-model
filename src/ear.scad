//Угловатое квадратное ухо.
//"w" - толщина уха
module sqr_ear(y,x,w,h) {
    translate([-y/2,0,0])
    difference() {
        cube([y,x,h]);
        translate([w,0,0]) cube([y-w*2,x-w,h]);
    }
}

//Ухо со сглаженными углами.
//"y" - должен быть больше чем "x".
//"w" - толщина уха
module slc_ear(y,x,w,h){
    rotate([0,0,90])
    translate([0,-y/2,0])
    linear_extrude(height=h)
    polygon([
    [0,0],
    [x/2,0],
    [x,x/2],
    [x,y-x/2],
    [x/2,y],
    [0,y],
    [0,y - w],
    [x/2 - w * sin(45/2),y - w],
    [x - w * sin(45/2*3),y -x/2 - w * cos(45/2*3)],
    [x - w * sin(45/2*3),x/2 + w * cos(45/2*3)],
    [x/2 - w * sin(45/2),w],
    [0,w],
    ]);       
}

//Ухо в виде ободка.
module rim_ears(er,ir,iir,w,h,n) {
    union() {
        difference() {
            cylinder(r=er, h=h);
            cylinder(r=ir, h=h);
        }
        difference() {
            for(fi = [0 : 360/n : 359]) 
            rotate([0,0,fi])
            translate([0,-w/2,0])cube([ir,w,h]);
            cylinder(r=iir,h=h);
        }
    }
}

module radiused(offset,radius) {
    ystate = sqrt(radius*radius - offset*offset);
    translate([0,ystate,0]) children(0);
}

//Демонстрационный код:
//  Массив sqr_ear.
/*for(fi = [0 : 60 : 359]) 
    rotate([0,0,fi])
    radiused(10,30) sqr_ear(10,6,2,3);*/

//  Массив slc_ear.
/*for(fi = [0 : 60 : 359]) 
    rotate([0,0,fi])
    radiused(10,30) slc_ear(10,6,2,3);*/

//  Круговое ухо (rim_ears).
//rim_ears(40,35,30,4,3,3);