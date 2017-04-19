include<ear.scad>
include<rim.scad>

module ringbase(
    externalRadius,
    internalRadius,
    height,
    baseHeight,
    earLength,
    earEmptyLength,
    earWidth,
    earEmptyWidth,
    earTotal) { 
    step = 360 / earTotal;
    union() {
        based_rim(externalRadius,internalRadius,height,baseHeight);
        for(fi = [0 : step : 359]) 
            rotate([0,0,fi]) radiused_ear(earLength,earEmptyLength,
                earWidth,earEmptyWidth,baseHeight,externalRadius);
    }    
}

ringbase(30,25,8,4,10,6,6,4,12);
