package csg;

import org.abstractica.javacsg.Geometry2D;
import org.abstractica.javacsg.Geometry3D;
import org.abstractica.javacsg.JavaCSG;

public class Circular {

    private final double width;
    private final double height;
    private final int detail;
    private final double indentMultiplier;
    private final double heightMultiplier;
    private final double ringCutout;
    private final double ringCutoutSize;
    private double distance;

    public Circular(double width, double height, int detail, double indentMultiplier, double heightMultiplier, double ringCutout, double ringCutoutSize) {
        this.width = width;
        this.height = height;
        this.detail = detail;
        this.indentMultiplier = indentMultiplier;
        this.heightMultiplier = heightMultiplier;
        this.ringCutout = ringCutout;
        this.ringCutoutSize = ringCutoutSize;
    }

    // creates a 2D circle
    private Geometry2D getCircle2D(JavaCSG csg){
        Geometry2D circle2D = csg.circle2D(width, detail);
        return circle2D;
    }

    // creates circular bricks
    public Geometry3D getCircular3D(JavaCSG csg, boolean big, boolean hollow){

        Geometry2D circle2D = getCircle2D(csg);

        Geometry3D res;

        // sphere to hollow out piece
        Geometry3D sphere = getSphere(csg);


        Geometry3D circleCutout = csg.torus3D(width*indentMultiplier, width, detail, detail, true);

    }

    private Geometry3D getSphere(JavaCSG csg) {
        // width is made shorter to make the hollow part fit the piece
        Geometry3D sph3D = csg.sphere3D(width * ringCutoutSize, detail, true);
        return sph3D;
    }

}
