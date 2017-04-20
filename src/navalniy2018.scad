//Данный модуль строит 3д символ компании (image/symbol.png) 
module navalniy2018(x,y,z,s,bh) {
    symbol_file = "../image/navalniy2.png";
    symbol_x = 552 + s;
    symbol_y = 62 + s;
    
    scale([1/symbol_x*x,1/symbol_y*y,1/100*z])
    union() {
    translate([0,0,100])
    surface(file=symbol_file, invert=true,center=true);
    
    translate([0,0,-bh])cube([symbol_x, symbol_y,bh], center=true);
        
    }
   // linear_extrude(height = z, center = true, convexity = 10)
   //import (file = symbol_file);
}
    
//Демонстрационный код.
//navalniy2018(552/2,62/2,10,20,1);