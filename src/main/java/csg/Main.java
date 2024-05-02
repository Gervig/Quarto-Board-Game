package csg;

import org.abstractica.javacsg.*;

public class Main {
    public static void main(String[] args) {

        JavaCSG csg = JavaCSGFactory.createNoCaching();

        double width = 5.0;
        double height = 15.0;
        double indentMultiplier = 0.66;
        double heightMultiplier = 0.75;
        double ringCutout = 1.0;
        double ringCutoutSize = 0.8;
        int detail = 64;

        Square square = new Square(width, height, detail, indentMultiplier, heightMultiplier, ringCutout, ringCutoutSize);

        // Square high hollow
        Geometry3D res1 = square.getSquare3D(csg, true, true);
//        csg.view(res1);

        // Square low hollow
        Geometry3D res2 = square.getSquare3D(csg, false, true);
//        csg.view(res2);

        // Square high
        Geometry3D res3 = square.getSquare3D(csg, true, false);
//        csg.view(res3);

        //Square low
        Geometry3D res4 = square.getSquare3D(csg, false, false);
//        csg.view(res4);

        Geometry3D resFinal = csg.union3D(res1, res2, res3, res4);
        csg.view(resFinal);
    }
}
