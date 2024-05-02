linear_extrude(height = 7.5, twist = 0.0, scale = 1.0, slices = 1, center = false)
{
    scale([5.0, 5.0])
    {
        M8();
    }
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