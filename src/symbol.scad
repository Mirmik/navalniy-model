//Данный модуль строит 3д символ компании (image/symbol.png) 
module symbol(x,y,z) {
    symbol_file = "../image/symbol.png";
    symbol_x = 100;
    symbol_y = 100;
    
    scale([1/symbol_x*x,1/symbol_y*y,1/100*z])
    translate([0,0,100])
    surface(file=symbol_file, invert=true,center=true);
}

//Демонстрационный код.
//symbol(40,40,10);