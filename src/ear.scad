include <util.scad>

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
            translate([0,0,-0.005])cylinder(r=ir, h=h+0.01*h);
        }
        difference() {
            for(fi = [0 : 360/n : 359]) 
            rotate([0,0,fi])
            translate([0,-w/2,0])cube([ir,w,h]);
            translate([0,0,-0.005])cylinder(r=iir,h=h+0.01*h);
        }
    }
}

//Инверсная болванка для выреза "скрытого уха".
module hide_ear(earSz) {
    translate([-2*earSz,earSz/2,0])
    rotate([90,0,0])
    linear_extrude(height = earSz)
    polygon([
    [0,-0.01*earSz],
    [earSz,-0.01*earSz],
    [2*earSz+0.01*earSz,earSz],
    [2*earSz+0.01*earSz,2*earSz],
    ]);  
}

//Демонстрационный код:
//  Массив sqr_ear.
/*for(fi = [0 : 60 : 359]) 
    rotate([0,0,fi])
    radiused(30,10) sqr_ear(10,6,2,3);*/
//linear_array(100,4) sqr_ear(10,6,2,3);

//  Массив slc_ear.
/*for(fi = [0 : 60 : 359]) 
    rotate([0,0,fi])
    radiused(30,10) slc_ear(10,6,2,3);*/

//  Круговое ухо (rim_ears).
//rim_ears(40,35,30,4,3,8);

//  Под вырезы в модели (hide_ear).
//for(fi = [0 : 360/6 : 359])
//   rotate([0,0,fi])
//   translate([30,0,0])hide_ear(2);