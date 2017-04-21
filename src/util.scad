//Данная функция корректно смещает slc_ear и sqr_ear 
//под нужный радиус окружности.
module radiused(radius,offset) {
    ystate = sqrt(radius*radius - offset*offset);
    translate([0,ystate,0]) children(0);
}

module linear_array(length, total) {
    for(x = [0:length/(total - 1):length])
        translate([x,0,0]) children(0);
}

module mirror_copy(vector) {
    union() {
        mirror(vector) children(0);
        children(0);
    }
}