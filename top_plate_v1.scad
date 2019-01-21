$fs = 0.1;
height = 1;

// 縦、幅+3mmずつ + minkowskiで+2mm = 5mm?

module tri(h) {
    polyhedron([[0, 0, 0], [0, 82, 0], [-17, 82, 0], [-17, 82, h], [0, 82, h], [0, 0, h]],
    [[0, 1, 2], [5, 4, 3], [0, 2, 3, 5], [0, 1, 4, 5], [1, 2, 3, 4]]);
};

module hole(x, y, h) {
    translate([x, y, 0])
        cylinder(r=1, h=h+1);
};

module cherry_hole(x, y, h) {
    translate([x, y, 0])
        cube([14, 14, h+1]);
}

translate([19, 2, 0])
    difference() {
        minkowski() {
            union() {
                    cube([104, 82, height]);
                    tri(height);
                    rotate([180, 180, 0])
                        translate([-104, -82, 0])
                            tri(height);
            };
            cylinder(r=2, h=height);
        };
        
        //key
        for(i = [0:3]) {
            translate([-i*4.75, 14*i+5*i, 0])
            for(j = [0:5]) {
                if(j == 0) {
                    cherry_hole(14*j+2+3, 2+3, height);
                } else {
                    cherry_hole(14*j+j*5+2+3, 2+3, height);
                }
            }
        }
        
        //基板
        hole(19+2, 7+2, height);
        hole(76+2, 7+2, height);
        hole(23.5+2, 66+2, height);
        hole(61.5+2, 104-38-2, height);
        
        //外周
        hole(2, 2, height);
        hole(104-2, 82-2, height);
        hole(2-17, 82-2, height);
        hole(104+17-2, 2, height);
        hole(109+2, 41-2, height);
        hole(2-8, 41-2, height);
        hole(54+2, 2, height);
        hole(54+2, 82-2, height);
    };
