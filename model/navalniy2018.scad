include<../src/navalniy2018.scad>
include<../src/ear.scad>

s=30;
xf = (552 + s)/5 ;
yf = (62 + s)/5;
zf = 6;
bh = 2;
h=6;
w = 3;

scale(1.2)
union() {
    translate([0,0,-(bh)/2])
        cube([xf,yf,bh],center=true);
    translate([0,0,(h-bh)/2])
        difference(){
            cube([xf,yf,h-bh], center=true);
            cube([xf-w,yf-w,h-bh], center=true);
        }
    navalniy2018(xf,yf,zf,s,3);
        
        for(k = [- xf / 2 + 10 : (xf - 20) / 4 : (xf - 10)/2])
        translate([k,yf/2,-(bh)])    
        slc_ear(20,4,2,3);
        
        mirror([0,1,0])
        for(k = [- xf / 2 + 10 : (xf - 20) / 4 : (xf - 10)/2])
        translate([k,yf/2,-(bh)])    
        slc_ear(20,4,2,3);
}