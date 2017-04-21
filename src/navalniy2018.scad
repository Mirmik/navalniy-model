//Размеры исходника(Константы)
navalniy2018_X_SIZE = 552;
navalniy2018_Y_SIZE = 62;
navalniy2018_X_TO_Y = 62 / 552;


//Данный модуль строит надпись "Навальный 2018" (image/symbol.png)
//x,y,z - размеры по осям x,y,z (
//z вычисляется по карте уровней, поэтому реальный z меньше заявленного.
//) 
//s - пустое пространство вокруг надписи.
//bh - высота базы.
module navalniy2018(x,y,z,s,bh) {
    file = "../image/navalniy2.png";
    xsize = navalniy2018_X_SIZE;
    ysize = navalniy2018_Y_SIZE;
    
    //
    union() {
        scale([1/xsize*x,1/ysize*y,1/100*z])
            translate([0,0,100])
                surface(file=file, invert=true,center=true);
    
    translate([0,0,-bh/2])cube([x + s, y + s, bh], center=true);
        
    }
   // linear_extrude(height = z, center = true, convexity = 10)
   //import (file = symbol_file);
}
    
//Демонстрационный код.
//navalniy2018(150, 150 * navalniy2018_X_TO_Y, 10, 10, 10);