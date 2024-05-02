package csg;

import org.abstractica.javacsg.Geometry2D;
import org.abstractica.javacsg.Geometry3D;
import org.abstractica.javacsg.JavaCSG;

public class Square {

    private final double width;
    private final double height;
    private final int detail;
    private final double indentMultiplier;
    private final double heightMultiplier;
    private final double ringCutout;
    private final double ringCutoutSize;
    private double distance;

    public Square(double width, double height, int detail, double indentMultiplier, double heightMultiplier, double ringCutout, double ringCutoutSize) {
        this.width = width;
        this.height = height;
        this.detail = detail;
        this.indentMultiplier = indentMultiplier;
        this.heightMultiplier = heightMultiplier;
        this.ringCutout = ringCutout;
        this.ringCutoutSize = ringCutoutSize;
    }

    private Geometry2D getSquare2D(JavaCSG csg) {
        Geometry2D rect = csg.rectangle2D(width, width);
        return rect;
    }

    // creates square bricks
    public Geometry3D getSquare3D(JavaCSG csg, boolean big, boolean hollow) {

        // get 2D rectangle and declare 3D res
        Geometry2D rect2D = getSquare2D(csg);
        // declare a 3D object called res
        Geometry3D res;

        // sphere to hollow out piece
        Geometry3D sphere = getSphere(csg);

        // if boolean big is true: then height is not reduced
        if (big) {
            // extrudes a 2D rect to 3D at full height
            res = csg.linearExtrude(height, false, rect2D);
            // moves the sphere to the top of the piece
            sphere = csg.translate3DZ(height).transform(sphere);
            // if big is false: then height is reduced
        } else {
            // extrudes a 2D rect to 3D at reduced height
            res = csg.linearExtrude(height * heightMultiplier, false, rect2D);
            // moves the sphere to the top of the piece
            sphere = csg.translate3DZ(height * heightMultiplier).transform(sphere);
        }

        // creates a 3D square ring
//        Geometry3D squareRingCutout3DPositive = getSquareRingCutout(csg);

        // creates a 3D cylinder ring
        Geometry3D cylinderRingCutout = getCylinderRingCutout(csg);

        // moves the 3D square ring up on the piece
        cylinderRingCutout = csg.translate3DZ((height * indentMultiplier * 1.25) * ringCutoutSize).transform(cylinderRingCutout);

        // cuts out the sphere from the top of the piece,
        // if hollow is true
        if (hollow) {
            res = csg.difference3D(res, sphere);
        }

        // cuts out the ring on the piece
        res = csg.difference3D(res, cylinderRingCutout);

        // moves the pieces, so they can all be displayed in the same file
        res = movePiece(csg, res);
        return res;
    }

    // cutouts in square shapes
    private Geometry3D getSquareRingCutout(JavaCSG csg) {
        // creates a 2D rectangle
        Geometry2D rect2D = getSquare2D(csg);
        // creates larger 3D ring cutout
        Geometry3D ringCutout3DPosetive = csg.linearExtrude(ringCutout, false, rect2D);
        // creates smaller 2D rectangle for cutout
        Geometry2D rect2DNegative = csg.rectangle2D(width * ringCutoutSize, width * ringCutoutSize);
        // extrudes 2D to 3D
        Geometry3D ringCutout3DNegative = csg.linearExtrude(ringCutout, false, rect2DNegative);
        // removes smaller square from larger one, to make a square ring
        ringCutout3DPosetive = csg.difference3D(ringCutout3DPosetive, ringCutout3DNegative);
        return ringCutout3DPosetive;
    }

    // cutouts in circular shape
    private Geometry3D getCylinderRingCutout(JavaCSG csg) {
        // creates an array of size 4
        Geometry3D[] cylinder = new Geometry3D[4];

        // initialize and position cylinders in a square pattern
        double halfWidth = width * 0.5;

        // moves the cylinders
        cylinder[0] = csg.translate3D(-halfWidth, -halfWidth, 0).transform(csg.cylinder3D(ringCutout, width, detail, true));
        cylinder[1] = csg.translate3D(halfWidth, -halfWidth, 0).transform(csg.cylinder3D(ringCutout, width, detail, true));
        cylinder[2] = csg.translate3D(halfWidth, halfWidth, 0).transform(csg.cylinder3D(ringCutout, width, detail, true));
        cylinder[3] = csg.translate3D(-halfWidth, -halfWidth, 0).transform(csg.cylinder3D(ringCutout, width, detail, true));
        // rotates the cylinders
        cylinder[0] = csg.rotate3DX(csg.degrees(90)).transform(cylinder[0]);
        cylinder[1] = csg.rotate3DX(csg.degrees(90)).transform(cylinder[1]);
        cylinder[2] = csg.rotate3DY(csg.degrees(90)).transform(cylinder[2]);
        cylinder[3] = csg.rotate3DZ(csg.degrees(90)).transform(cylinder[3]);
        cylinder[3] = csg.rotate3DY(csg.degrees(90)).transform(cylinder[3]);

        // combine all cylinders into a single geometry
        Geometry3D cylinderFinal = csg.union3D(cylinder[0], cylinder[1], cylinder[2], cylinder[3]);
        return cylinderFinal;
    }

    // distance for translating (moving) the pieces,
    // so they don't display on top of each other
    private Geometry3D movePiece(JavaCSG csg, Geometry3D square) {
        square = csg.translate3DX(distance).transform(square);
        distance += width * 2;
        return square;
    }

    private Geometry3D getSphere(JavaCSG csg) {
        // width is made shorter to make the hollow part fit the piece
        Geometry3D sph3D = csg.sphere3D(width * ringCutoutSize, detail, true);
        return sph3D;
    }
}
