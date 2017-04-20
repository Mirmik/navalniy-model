include<../src/ear.scad>
include<../src/rim.scad>
include<../src/symbol.scad>

externalRadius=30;
internalRadius=25;
height=8;
baseHeight=4;
symbHeight=6;
earLength=10;
earWidth=5;
earSz = 2;
earTotal=12;

symbsize = sqrt(2)*internalRadius;
symbdeep = 2;
symblevel = baseHeight-symbdeep;

module ringbase(
    externalRadius,
    internalRadius,
    height,
    baseHeight,
    earLength,
    earWidth,
    earEmptySz,
    earTotal) { 
    step = 360 / earTotal;
    union() {
        based_rim(externalRadius,internalRadius,height,baseHeight);
        /*for(fi = [0 : step : 359]) 
            rotate([0,0,fi]) radiused(earLength/2,externalRadius)
            sqr_ear(earLength,
                earWidth,earSz,baseHeight,externalRadius);*/
        /*for(fi = [0 : step : 359]) 
            rotate([0,0,fi]) radiused(earLength/2,externalRadius)
            slc_ear(earLength,
                earWidth,earSz,baseHeight,externalRadius);*/
        rim_ears(40,35,externalRadius,5,baseHeight,6);
        
    }    
}

union() {
difference(){
    ringbase(
    externalRadius=externalRadius,
    internalRadius=internalRadius,
    height=height,
    baseHeight=baseHeight,
    earLength=earLength,
    //earEmptyLength=earEmptyLength,
    earWidth=earWidth,
    //earEmptyWidth=earEmptyWidth,
    earSz=earSz,
    earTotal=earTotal
    );
    translate([-symbsize/2,-symbsize/2,baseHeight-symbdeep])
    cube([symbsize,symbsize,symbdeep]);
}
translate([0,0,symblevel])
    symbol(symbsize, symbsize, symbHeight-symblevel);
}