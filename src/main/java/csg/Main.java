package csg;

import org.abstractica.javacsg.*;

import java.util.ArrayList;

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


        // Initialize an ArrayList to hold our objects
        ArrayList<Geometry3D> resArray = new ArrayList<>();

        // Initialize a new Square object
        Square square = new Square(width, height, detail, indentMultiplier, heightMultiplier, ringCutout, ringCutoutSize);

        // Initialize a new Circular object
        Circular circular = new Circular(width, height, detail, indentMultiplier, heightMultiplier, ringCutout, ringCutoutSize);

        // Square high hollow
        Geometry3D res1 = square.getSquare3D(csg, true, true);
        resArray.add(res1);
//        csg.view(res1);

        // Square low hollow
        Geometry3D res2 = square.getSquare3D(csg, false, true);
        resArray.add(res2);
//        csg.view(res2);

        // Square high
        Geometry3D res3 = square.getSquare3D(csg, true, false);
        resArray.add(res3);
//        csg.view(res3);

        // Square low
        Geometry3D res4 = square.getSquare3D(csg, false, false);
        resArray.add(res4);
//        csg.view(res4);

        // Circular high hollow
        Geometry3D res5 = circular.getCircular3D(csg, true, true);
        resArray.add(res5);
//        csg.view(res5);

        // Circular low hollow
        Geometry3D res6 = circular.getCircular3D(csg, false, true);
        resArray.add(res6);
//        csg.view(res6);

        // Circular high
        Geometry3D res7 = circular.getCircular3D(csg, true, false);
        resArray.add(res7);
//        csg.view(res7);

        // Circular low
        Geometry3D res8 = circular.getCircular3D(csg, false, false);
        resArray.add(res8);
//        csg.view(res8);

        Geometry3D resFinal = csg.union3D(resArray);

        csg.view(resFinal);
    }
}
