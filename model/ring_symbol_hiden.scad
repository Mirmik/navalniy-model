include<../src/ear.scad>
include<../src/rim.scad>
include<../src/symbol.scad>

extRad=30;                  //Внешний радиус
intRad=25;                  //Внутренний радиус обода
rimHeight = 4;              //Высота обода (отсчитывается от базы).
baseHeight = 4;             //Высота базы.
symbSize = intRad*sqrt(2);  //Размер стороны внутреннего квадрата.
symbLevel = 2.5;            //Уровень квадрата.
symbHeight = 5;             //Высота символа.
earsTotal = 6;              //Количество ушей.

difference() {
    union() {
        difference(){
            union() {
                translate([0,0,baseHeight])
                    rim(externalRadius=extRad,internalRadius=intRad,height=rimHeight);
                cylinder(r=extRad,h=baseHeight);
            }
        
            translate([-symbSize/2,-symbSize/2,symbLevel])
                cube([symbSize,symbSize,rimHeight]);
        }
        translate([0,0,symbLevel])
            symbol(symbSize,symbSize,symbHeight);
    }

    for(fi = [0 : 360/ earsTotal : 359])
       rotate([0,0,fi])
            translate([extRad,0,0])hide_ear(2);
}