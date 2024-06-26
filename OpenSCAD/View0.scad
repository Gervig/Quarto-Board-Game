union()
{
    translate([0.0, 0.0, 0.0])
    {
        difference()
        {
            difference()
            {
                linear_extrude(height = 15.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([5.0, 5.0])
                    {
                        M8();
                    }
                }
                translate([0.0, 0.0, 15.0])
                {
                    scale([4.0, 4.0, 4.0])
                    {
                        rotate_extrude(angle = 360.0, $fn = 64)
                        {
                            M70();
                        }
                    }
                }
            }
            translate([0.0, 0.0, 9.9])
            {
                union()
                {
                    rotate([90.0, 0.0, 0.0])
                    {
                        translate([-2.5, -2.5, 0.0])
                        {
                            linear_extrude(height = 5.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                            {
                                scale([1.0, 1.0])
                                {
                                    M101();
                                }
                            }
                        }
                    }
                    rotate([90.0, 0.0, 0.0])
                    {
                        translate([2.5, -2.5, 0.0])
                        {
                            linear_extrude(height = 5.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                            {
                                scale([1.0, 1.0])
                                {
                                    M101();
                                }
                            }
                        }
                    }
                    rotate([0.0, 90.0, 0.0])
                    {
                        translate([2.5, 2.5, 0.0])
                        {
                            linear_extrude(height = 5.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                            {
                                scale([1.0, 1.0])
                                {
                                    M101();
                                }
                            }
                        }
                    }
                    rotate([0.0, 90.0, 0.0])
                    {
                        rotate([0.0, 0.0, 90.0])
                        {
                            translate([-2.5, -2.5, 0.0])
                            {
                                linear_extrude(height = 5.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                                {
                                    scale([1.0, 1.0])
                                    {
                                        M101();
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    translate([10.0, 0.0, 0.0])
    {
        difference()
        {
            difference()
            {
                linear_extrude(height = 11.25, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([5.0, 5.0])
                    {
                        M8();
                    }
                }
                translate([0.0, 0.0, 11.25])
                {
                    scale([4.0, 4.0, 4.0])
                    {
                        rotate_extrude(angle = 360.0, $fn = 64)
                        {
                            M70();
                        }
                    }
                }
            }
            translate([0.0, 0.0, 9.9])
            {
                union()
                {
                    rotate([90.0, 0.0, 0.0])
                    {
                        translate([-2.5, -2.5, 0.0])
                        {
                            linear_extrude(height = 5.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                            {
                                scale([1.0, 1.0])
                                {
                                    M101();
                                }
                            }
                        }
                    }
                    rotate([90.0, 0.0, 0.0])
                    {
                        translate([2.5, -2.5, 0.0])
                        {
                            linear_extrude(height = 5.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                            {
                                scale([1.0, 1.0])
                                {
                                    M101();
                                }
                            }
                        }
                    }
                    rotate([0.0, 90.0, 0.0])
                    {
                        translate([2.5, 2.5, 0.0])
                        {
                            linear_extrude(height = 5.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                            {
                                scale([1.0, 1.0])
                                {
                                    M101();
                                }
                            }
                        }
                    }
                    rotate([0.0, 90.0, 0.0])
                    {
                        rotate([0.0, 0.0, 90.0])
                        {
                            translate([-2.5, -2.5, 0.0])
                            {
                                linear_extrude(height = 5.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                                {
                                    scale([1.0, 1.0])
                                    {
                                        M101();
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    translate([20.0, 0.0, 0.0])
    {
        difference()
        {
            linear_extrude(height = 15.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
            {
                scale([5.0, 5.0])
                {
                    M8();
                }
            }
            translate([0.0, 0.0, 9.9])
            {
                union()
                {
                    rotate([90.0, 0.0, 0.0])
                    {
                        translate([-2.5, -2.5, 0.0])
                        {
                            linear_extrude(height = 5.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                            {
                                scale([1.0, 1.0])
                                {
                                    M101();
                                }
                            }
                        }
                    }
                    rotate([90.0, 0.0, 0.0])
                    {
                        translate([2.5, -2.5, 0.0])
                        {
                            linear_extrude(height = 5.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                            {
                                scale([1.0, 1.0])
                                {
                                    M101();
                                }
                            }
                        }
                    }
                    rotate([0.0, 90.0, 0.0])
                    {
                        translate([2.5, 2.5, 0.0])
                        {
                            linear_extrude(height = 5.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                            {
                                scale([1.0, 1.0])
                                {
                                    M101();
                                }
                            }
                        }
                    }
                    rotate([0.0, 90.0, 0.0])
                    {
                        rotate([0.0, 0.0, 90.0])
                        {
                            translate([-2.5, -2.5, 0.0])
                            {
                                linear_extrude(height = 5.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                                {
                                    scale([1.0, 1.0])
                                    {
                                        M101();
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    translate([30.0, 0.0, 0.0])
    {
        difference()
        {
            linear_extrude(height = 11.25, twist = 0.0, scale = 1.0, slices = 1, center = false)
            {
                scale([5.0, 5.0])
                {
                    M8();
                }
            }
            translate([0.0, 0.0, 9.9])
            {
                union()
                {
                    rotate([90.0, 0.0, 0.0])
                    {
                        translate([-2.5, -2.5, 0.0])
                        {
                            linear_extrude(height = 5.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                            {
                                scale([1.0, 1.0])
                                {
                                    M101();
                                }
                            }
                        }
                    }
                    rotate([90.0, 0.0, 0.0])
                    {
                        translate([2.5, -2.5, 0.0])
                        {
                            linear_extrude(height = 5.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                            {
                                scale([1.0, 1.0])
                                {
                                    M101();
                                }
                            }
                        }
                    }
                    rotate([0.0, 90.0, 0.0])
                    {
                        translate([2.5, 2.5, 0.0])
                        {
                            linear_extrude(height = 5.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                            {
                                scale([1.0, 1.0])
                                {
                                    M101();
                                }
                            }
                        }
                    }
                    rotate([0.0, 90.0, 0.0])
                    {
                        rotate([0.0, 0.0, 90.0])
                        {
                            translate([-2.5, -2.5, 0.0])
                            {
                                linear_extrude(height = 5.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                                {
                                    scale([1.0, 1.0])
                                    {
                                        M101();
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    translate([0.0, 10.0, 0.0])
    {
        translate([0.0, 0.0, 0.0])
        {
            difference()
            {
                difference()
                {
                    linear_extrude(height = 15.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                    {
                        scale([5.0, 5.0])
                        {
                            M101();
                        }
                    }
                    translate([0.0, 0.0, 15.0])
                    {
                        scale([4.0, 4.0, 4.0])
                        {
                            rotate_extrude(angle = 360.0, $fn = 64)
                            {
                                M70();
                            }
                        }
                    }
                }
                translate([0.0, 0.0, 7.920000000000001])
                {
                    rotate_extrude(angle = 360.0, $fn = 64)
                    {
                        translate([2.5, 0.0])
                        {
                            scale([1.0, 1.0])
                            {
                                M101();
                            }
                        }
                    }
                }
            }
        }
    }
    translate([0.0, 10.0, 0.0])
    {
        translate([10.0, 0.0, 0.0])
        {
            difference()
            {
                difference()
                {
                    linear_extrude(height = 11.25, twist = 0.0, scale = 1.0, slices = 1, center = false)
                    {
                        scale([5.0, 5.0])
                        {
                            M101();
                        }
                    }
                    translate([0.0, 0.0, 11.25])
                    {
                        scale([4.0, 4.0, 4.0])
                        {
                            rotate_extrude(angle = 360.0, $fn = 64)
                            {
                                M70();
                            }
                        }
                    }
                }
                translate([0.0, 0.0, 7.920000000000001])
                {
                    rotate_extrude(angle = 360.0, $fn = 64)
                    {
                        translate([2.5, 0.0])
                        {
                            scale([1.0, 1.0])
                            {
                                M101();
                            }
                        }
                    }
                }
            }
        }
    }
    translate([0.0, 10.0, 0.0])
    {
        translate([20.0, 0.0, 0.0])
        {
            difference()
            {
                linear_extrude(height = 15.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([5.0, 5.0])
                    {
                        M101();
                    }
                }
                translate([0.0, 0.0, 7.920000000000001])
                {
                    rotate_extrude(angle = 360.0, $fn = 64)
                    {
                        translate([2.5, 0.0])
                        {
                            scale([1.0, 1.0])
                            {
                                M101();
                            }
                        }
                    }
                }
            }
        }
    }
    translate([0.0, 10.0, 0.0])
    {
        translate([30.0, 0.0, 0.0])
        {
            difference()
            {
                linear_extrude(height = 11.25, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([5.0, 5.0])
                    {
                        M101();
                    }
                }
                translate([0.0, 0.0, 7.920000000000001])
                {
                    rotate_extrude(angle = 360.0, $fn = 64)
                    {
                        translate([2.5, 0.0])
                        {
                            scale([1.0, 1.0])
                            {
                                M101();
                            }
                        }
                    }
                }
            }
        }
    }
    translate([80.0, 0.0, 0.0])
    {
        difference()
        {
            difference()
            {
                difference()
                {
                    difference()
                    {
                        difference()
                        {
                            difference()
                            {
                                difference()
                                {
                                    difference()
                                    {
                                        difference()
                                        {
                                            difference()
                                            {
                                                difference()
                                                {
                                                    difference()
                                                    {
                                                        difference()
                                                        {
                                                            difference()
                                                            {
                                                                difference()
                                                                {
                                                                    difference()
                                                                    {
                                                                        rotate([0.0, 0.0, 45.0])
                                                                        {
                                                                            difference()
                                                                            {
                                                                                linear_extrude(height = 3.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                                                                                {
                                                                                    scale([50.0, 50.0])
                                                                                    {
                                                                                        M8();
                                                                                    }
                                                                                }
                                                                                translate([0.0, 0.0, 3.0])
                                                                                {
                                                                                    linear_extrude(height = 0.75, twist = 0.0, scale = 1.0, slices = 1, center = true)
                                                                                    {
                                                                                        difference()
                                                                                        {
                                                                                            scale([48.5, 48.5])
                                                                                            {
                                                                                                M101();
                                                                                            }
                                                                                            scale([47.0, 47.0])
                                                                                            {
                                                                                                M101();
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                        translate([-9.0, -9.0, 0.0])
                                                                        {
                                                                            translate([0.0, 22.75, 0.0])
                                                                            {
                                                                                translate([22.375, 0.0, 0.0])
                                                                                {
                                                                                    translate([0.0, 0.0, 1.5])
                                                                                    {
                                                                                        linear_extrude(height = 1.5, twist = 0.0, scale = 1.0, slices = 1, center = false)
                                                                                        {
                                                                                            scale([7.5, 7.5])
                                                                                            {
                                                                                                M101();
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    translate([-9.0, -18.0, 0.0])
                                                                    {
                                                                        translate([0.0, 22.75, 0.0])
                                                                        {
                                                                            translate([22.375, 0.0, 0.0])
                                                                            {
                                                                                translate([0.0, 0.0, 1.5])
                                                                                {
                                                                                    linear_extrude(height = 1.5, twist = 0.0, scale = 1.0, slices = 1, center = false)
                                                                                    {
                                                                                        scale([7.5, 7.5])
                                                                                        {
                                                                                            M101();
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                translate([-9.0, -27.0, 0.0])
                                                                {
                                                                    translate([0.0, 22.75, 0.0])
                                                                    {
                                                                        translate([22.375, 0.0, 0.0])
                                                                        {
                                                                            translate([0.0, 0.0, 1.5])
                                                                            {
                                                                                linear_extrude(height = 1.5, twist = 0.0, scale = 1.0, slices = 1, center = false)
                                                                                {
                                                                                    scale([7.5, 7.5])
                                                                                    {
                                                                                        M101();
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            translate([-9.0, -36.0, 0.0])
                                                            {
                                                                translate([0.0, 22.75, 0.0])
                                                                {
                                                                    translate([22.375, 0.0, 0.0])
                                                                    {
                                                                        translate([0.0, 0.0, 1.5])
                                                                        {
                                                                            linear_extrude(height = 1.5, twist = 0.0, scale = 1.0, slices = 1, center = false)
                                                                            {
                                                                                scale([7.5, 7.5])
                                                                                {
                                                                                    M101();
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        translate([-18.0, -9.0, 0.0])
                                                        {
                                                            translate([0.0, 22.75, 0.0])
                                                            {
                                                                translate([22.375, 0.0, 0.0])
                                                                {
                                                                    translate([0.0, 0.0, 1.5])
                                                                    {
                                                                        linear_extrude(height = 1.5, twist = 0.0, scale = 1.0, slices = 1, center = false)
                                                                        {
                                                                            scale([7.5, 7.5])
                                                                            {
                                                                                M101();
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                    translate([-18.0, -18.0, 0.0])
                                                    {
                                                        translate([0.0, 22.75, 0.0])
                                                        {
                                                            translate([22.375, 0.0, 0.0])
                                                            {
                                                                translate([0.0, 0.0, 1.5])
                                                                {
                                                                    linear_extrude(height = 1.5, twist = 0.0, scale = 1.0, slices = 1, center = false)
                                                                    {
                                                                        scale([7.5, 7.5])
                                                                        {
                                                                            M101();
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                translate([-18.0, -27.0, 0.0])
                                                {
                                                    translate([0.0, 22.75, 0.0])
                                                    {
                                                        translate([22.375, 0.0, 0.0])
                                                        {
                                                            translate([0.0, 0.0, 1.5])
                                                            {
                                                                linear_extrude(height = 1.5, twist = 0.0, scale = 1.0, slices = 1, center = false)
                                                                {
                                                                    scale([7.5, 7.5])
                                                                    {
                                                                        M101();
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            translate([-18.0, -36.0, 0.0])
                                            {
                                                translate([0.0, 22.75, 0.0])
                                                {
                                                    translate([22.375, 0.0, 0.0])
                                                    {
                                                        translate([0.0, 0.0, 1.5])
                                                        {
                                                            linear_extrude(height = 1.5, twist = 0.0, scale = 1.0, slices = 1, center = false)
                                                            {
                                                                scale([7.5, 7.5])
                                                                {
                                                                    M101();
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        translate([-27.0, -9.0, 0.0])
                                        {
                                            translate([0.0, 22.75, 0.0])
                                            {
                                                translate([22.375, 0.0, 0.0])
                                                {
                                                    translate([0.0, 0.0, 1.5])
                                                    {
                                                        linear_extrude(height = 1.5, twist = 0.0, scale = 1.0, slices = 1, center = false)
                                                        {
                                                            scale([7.5, 7.5])
                                                            {
                                                                M101();
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    translate([-27.0, -18.0, 0.0])
                                    {
                                        translate([0.0, 22.75, 0.0])
                                        {
                                            translate([22.375, 0.0, 0.0])
                                            {
                                                translate([0.0, 0.0, 1.5])
                                                {
                                                    linear_extrude(height = 1.5, twist = 0.0, scale = 1.0, slices = 1, center = false)
                                                    {
                                                        scale([7.5, 7.5])
                                                        {
                                                            M101();
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                translate([-27.0, -27.0, 0.0])
                                {
                                    translate([0.0, 22.75, 0.0])
                                    {
                                        translate([22.375, 0.0, 0.0])
                                        {
                                            translate([0.0, 0.0, 1.5])
                                            {
                                                linear_extrude(height = 1.5, twist = 0.0, scale = 1.0, slices = 1, center = false)
                                                {
                                                    scale([7.5, 7.5])
                                                    {
                                                        M101();
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            translate([-27.0, -36.0, 0.0])
                            {
                                translate([0.0, 22.75, 0.0])
                                {
                                    translate([22.375, 0.0, 0.0])
                                    {
                                        translate([0.0, 0.0, 1.5])
                                        {
                                            linear_extrude(height = 1.5, twist = 0.0, scale = 1.0, slices = 1, center = false)
                                            {
                                                scale([7.5, 7.5])
                                                {
                                                    M101();
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        translate([-36.0, -9.0, 0.0])
                        {
                            translate([0.0, 22.75, 0.0])
                            {
                                translate([22.375, 0.0, 0.0])
                                {
                                    translate([0.0, 0.0, 1.5])
                                    {
                                        linear_extrude(height = 1.5, twist = 0.0, scale = 1.0, slices = 1, center = false)
                                        {
                                            scale([7.5, 7.5])
                                            {
                                                M101();
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    translate([-36.0, -18.0, 0.0])
                    {
                        translate([0.0, 22.75, 0.0])
                        {
                            translate([22.375, 0.0, 0.0])
                            {
                                translate([0.0, 0.0, 1.5])
                                {
                                    linear_extrude(height = 1.5, twist = 0.0, scale = 1.0, slices = 1, center = false)
                                    {
                                        scale([7.5, 7.5])
                                        {
                                            M101();
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                translate([-36.0, -27.0, 0.0])
                {
                    translate([0.0, 22.75, 0.0])
                    {
                        translate([22.375, 0.0, 0.0])
                        {
                            translate([0.0, 0.0, 1.5])
                            {
                                linear_extrude(height = 1.5, twist = 0.0, scale = 1.0, slices = 1, center = false)
                                {
                                    scale([7.5, 7.5])
                                    {
                                        M101();
                                    }
                                }
                            }
                        }
                    }
                }
            }
            translate([-36.0, -36.0, 0.0])
            {
                translate([0.0, 22.75, 0.0])
                {
                    translate([22.375, 0.0, 0.0])
                    {
                        translate([0.0, 0.0, 1.5])
                        {
                            linear_extrude(height = 1.5, twist = 0.0, scale = 1.0, slices = 1, center = false)
                            {
                                scale([7.5, 7.5])
                                {
                                    M101();
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

module M101()
{
    polygon
    (
        points =
        [
            [0.5, 0.0], 
            [0.49759236333609846, 0.0490085701647803], 
            [0.4903926402016152, 0.09754516100806412], 
            [0.4784701678661044, 0.14514233862723117], 
            [0.46193976625564337, 0.1913417161825449], 
            [0.4409606321741775, 0.23569836841299882], 
            [0.4157348061512726, 0.2777851165098011], 
            [0.3865052266813685, 0.31719664208182274], 
            [0.3535533905932738, 0.35355339059327373], 
            [0.31719664208182274, 0.3865052266813685], 
            [0.27778511650980114, 0.4157348061512726], 
            [0.2356983684129989, 0.44096063217417747], 
            [0.19134171618254492, 0.46193976625564337], 
            [0.14514233862723117, 0.47847016786610447], 
            [0.09754516100806417, 0.4903926402016152], 
            [0.049008570164780385, 0.4975923633360984], 
            [3.061616997868383E-17, 0.5], 
            [-0.04900857016478032, 0.49759236333609846], 
            [-0.0975451610080641, 0.4903926402016152], 
            [-0.14514233862723108, 0.47847016786610447], 
            [-0.19134171618254486, 0.46193976625564337], 
            [-0.23569836841299885, 0.4409606321741775], 
            [-0.277785116509801, 0.41573480615127273], 
            [-0.3171966420818227, 0.38650522668136855], 
            [-0.35355339059327373, 0.3535533905932738], 
            [-0.3865052266813685, 0.31719664208182274], 
            [-0.4157348061512727, 0.2777851165098011], 
            [-0.44096063217417747, 0.23569836841299893], 
            [-0.46193976625564337, 0.19134171618254495], 
            [-0.4784701678661044, 0.1451423386272312], 
            [-0.4903926402016152, 0.0975451610080643], 
            [-0.4975923633360984, 0.04900857016478041], 
            [-0.5, 6.123233995736766E-17], 
            [-0.49759236333609846, -0.049008570164780295], 
            [-0.4903926402016152, -0.09754516100806418], 
            [-0.47847016786610447, -0.14514233862723105], 
            [-0.4619397662556434, -0.19134171618254484], 
            [-0.4409606321741775, -0.23569836841299882], 
            [-0.41573480615127273, -0.277785116509801], 
            [-0.38650522668136855, -0.31719664208182263], 
            [-0.35355339059327384, -0.35355339059327373], 
            [-0.31719664208182297, -0.38650522668136833], 
            [-0.2777851165098011, -0.4157348061512726], 
            [-0.23569836841299893, -0.44096063217417747], 
            [-0.19134171618254517, -0.46193976625564326], 
            [-0.14514233862723122, -0.4784701678661044], 
            [-0.09754516100806433, -0.49039264020161516], 
            [-0.049008570164780225, -0.49759236333609846], 
            [-9.184850993605148E-17, -0.5], 
            [0.049008570164780045, -0.49759236333609846], 
            [0.09754516100806415, -0.4903926402016152], 
            [0.14514233862723103, -0.47847016786610447], 
            [0.191341716182545, -0.4619397662556433], 
            [0.2356983684129988, -0.4409606321741775], 
            [0.2777851165098009, -0.41573480615127273], 
            [0.3171966420818228, -0.38650522668136844], 
            [0.3535533905932737, -0.35355339059327384], 
            [0.38650522668136833, -0.31719664208182297], 
            [0.4157348061512726, -0.2777851165098011], 
            [0.4409606321741774, -0.23569836841299896], 
            [0.46193976625564326, -0.1913417161825452], 
            [0.4784701678661044, -0.14514233862723125], 
            [0.49039264020161516, -0.09754516100806436], 
            [0.49759236333609846, -0.04900857016478025]
        ],
        paths =
        [
            [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63]
        ]
    );
}

module M70()
{
    polygon
    (
        points =
        [
            [0.0, 0.0], 
            [3.061616997868383E-17, -0.5], 
            [0.049008570164780385, -0.4975923633360984], 
            [0.09754516100806417, -0.4903926402016152], 
            [0.14514233862723117, -0.47847016786610447], 
            [0.19134171618254492, -0.46193976625564337], 
            [0.2356983684129989, -0.44096063217417747], 
            [0.27778511650980114, -0.4157348061512726], 
            [0.31719664208182274, -0.3865052266813685], 
            [0.3535533905932738, -0.35355339059327373], 
            [0.3865052266813685, -0.31719664208182274], 
            [0.4157348061512726, -0.2777851165098011], 
            [0.4409606321741775, -0.23569836841299882], 
            [0.46193976625564337, -0.1913417161825449], 
            [0.4784701678661044, -0.14514233862723117], 
            [0.4903926402016152, -0.09754516100806412], 
            [0.49759236333609846, -0.0490085701647803], 
            [0.5, 0.0], 
            [0.49759236333609846, 0.0490085701647803], 
            [0.4903926402016152, 0.09754516100806412], 
            [0.4784701678661044, 0.14514233862723117], 
            [0.46193976625564337, 0.1913417161825449], 
            [0.4409606321741775, 0.23569836841299882], 
            [0.4157348061512726, 0.2777851165098011], 
            [0.3865052266813685, 0.31719664208182274], 
            [0.3535533905932738, 0.35355339059327373], 
            [0.31719664208182274, 0.3865052266813685], 
            [0.27778511650980114, 0.4157348061512726], 
            [0.2356983684129989, 0.44096063217417747], 
            [0.19134171618254492, 0.46193976625564337], 
            [0.14514233862723117, 0.47847016786610447], 
            [0.09754516100806417, 0.4903926402016152], 
            [0.049008570164780385, 0.4975923633360984], 
            [3.061616997868383E-17, 0.5]
        ],
        paths =
        [
            [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]
        ]
    );
}

module M8()
{
    polygon
    (
        points =
        [
            [-0.5, -0.5], 
            [0.5, -0.5], 
            [0.5, 0.5], 
            [-0.5, 0.5]
        ],
        paths =
        [
            [0, 1, 2, 3]
        ]
    );
}
