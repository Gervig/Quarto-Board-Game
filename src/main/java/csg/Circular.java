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
    private Geometry2D getCircle2D(JavaCSG csg) {
        Geometry2D circle2D = csg.circle2D(width, detail);
        return circle2D;
    }

    // creates circular bricks
    public Geometry3D getCircular3D(JavaCSG csg, boolean big, boolean hollow) {

        Geometry2D circle2D = getCircle2D(csg);

        Geometry3D res;

        // sphere to hollow out piece
        Geometry3D sphere = getSphere(csg);

        // if boolean big is true: then height is not reduced
        if (big) {
            // extrudes a 2D rect to 3D at full height
            res = csg.linearExtrude(height, false, circle2D);
            // moves the sphere to the top of the piece
            sphere = csg.translate3DZ(height).transform(sphere);
            // if big is false: then height is reduced
        } else {
            // extrudes a 2D rect to 3D at reduced height
            res = csg.linearExtrude(height * heightMultiplier, false, circle2D);
            // moves the sphere to the top of the piece
            sphere = csg.translate3DZ(height * heightMultiplier).transform(sphere);
        }

        // creates a 3D doughnut cutout
        Geometry3D circleCutout = csg.torus3D(ringCutout, width, detail, detail, true);

       // moves the doughnut up on the piece
        circleCutout = csg.translate3DZ((height * indentMultiplier) * ringCutoutSize).transform(circleCutout);

        // cuts out the sphere from the top of the piece,
        // if hollow is true
        if (hollow) {
            res = csg.difference3D(res, sphere);
        }
        // cuts out the doughnut on the piece
        res = csg.difference3D(res, circleCutout);

        // moves the pieces, so they can all be displayed in the same file
        res = movePiece(csg, res);

        return res;
    }

    // distance for translating (moving) the pieces,
    // so they don't display on top of each other
    private Geometry3D movePiece(JavaCSG csg, Geometry3D circular) {
        circular = csg.translate3DX(distance).transform(circular);

        // moves the pieces on the Y-axis,
        // so that the circular pieces can be displayed with the square ones
            circular = csg.translate3DY(width*2).transform(circular);

        distance += width * 2;
        return circular;
    }

    private Geometry3D getSphere(JavaCSG csg) {
        // width is made shorter to make the hollow part fit the piece
        Geometry3D sph3D = csg.sphere3D(width * ringCutoutSize, detail, true);
        return sph3D;
    }

}
