package csg;

import org.abstractica.javacsg.Geometry2D;
import org.abstractica.javacsg.Geometry3D;
import org.abstractica.javacsg.JavaCSG;

public class Square {


    private final double width;
    private final double height;
    private final int detail;
    private final double heightMultiplier;
    private double distance;

    public Square(double width, double height, int detail, double heightMultiplier) {
        this.width = width;
        this.height = height;
        this.detail = detail;
        this.heightMultiplier = heightMultiplier;
    }

    private Geometry2D getSquare2D(JavaCSG csg) {
        Geometry2D rect = csg.rectangle2D(width, width);
        return rect;
    }

    public Geometry3D getSquare3D(JavaCSG csg, boolean big, boolean hollow) {

        Geometry2D rect2D = getSquare2D(csg);
        Geometry3D res;

        // sphere to hollow out piece
        Geometry3D sphere = getSphere(csg);

        //boolean big is true: then height is reduced
        if (big) {
            res = csg.linearExtrude(height, false, rect2D);
            // if big is false: then height is reduced
        } else {
            res = csg.linearExtrude(height * heightMultiplier, false, rect2D);
        }
        if (hollow) {
            res = csg.difference3D(res, sphere);
        }
        movePiece(csg, res);
        return res;
    }

    // distance for translating (moving) the pieces,
    // so they don't display on top of each other
    private Geometry3D movePiece(JavaCSG csg, Geometry3D square)
    {
        square = csg.translate3DX(distance).transform(square);
        distance += width*2;
        return square;
    }

    private Geometry3D getSphere(JavaCSG csg) {
        // width is made shorter to make the hollow part fit the piece
        Geometry3D sph3D = csg.sphere3D(width * 0.8, detail, true);
        return sph3D;
    }
}
