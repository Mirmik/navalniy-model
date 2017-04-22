include<../src/navalniy2018.scad>
include<../src/ear.scad>
include<../src/util.scad>

s = 10;
xf = 100;
yf = xf * navalniy2018_X_TO_Y;
zf = 6;
bh = 2;

earLength = 20;

rimHeight=5;
rimWidth = 3;

scale(1.0)
union() {
    //Создаём надпись.
    navalniy2018(xf,yf,zf,s,bh);
    
    //Создаём рамку.
    translate([0,0,rimHeight/2])
        difference(){
            cube([xf+s,yf+s,rimHeight], center=true);
            cube([xf+s-rimWidth,yf+s-rimWidth,rimHeight + 0.01], center=true);
        }
        
    //Создаём ушки.
    mirror_copy([0,1,0])
       translate([-(xf+s-earLength)/2,0,0])    
           for(k = [0 : (xf+s-earLength) / 4 : xf+s-earLength])
               translate([k,(yf+s)/2,-(bh)])    
                   slc_ear(earLength,4,2,3);
}