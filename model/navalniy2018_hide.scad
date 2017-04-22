include<../src/navalniy2018.scad>
include<../src/ear.scad>
include<../src/util.scad>

s = 10;
xf = 100;
yf = xf * navalniy2018_X_TO_Y;
zf = 5;
bh = 3;

rimHeight=4;
rimWidth = 3;

scale(1.0)
difference() {
    union() {
        //Создаём надпись.
        navalniy2018(xf,yf,zf,s,bh);
    
        //Создаём рамку.
        translate([0,0,rimHeight/2])
            difference(){
                cube([xf+s,yf+s,rimHeight], center=true);
                cube([xf+s-rimWidth,yf+s-rimWidth,rimHeight + 0.01], center=true);
            }
    }
    
    
    //Создаём ушки.   
    mirror_copy([0,1,0])
    translate([-xf/2,(yf+s)/2,-bh])
    linear_array(xf + s - 10, 2) 
    rotate([0,0,90])
    hide_ear(2);
}