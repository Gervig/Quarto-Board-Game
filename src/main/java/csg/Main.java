package csg;

import org.abstractica.javacsg.*;
import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        JavaCSG csg = JavaCSGFactory.createNoCaching();

        //todo fix inputs to scale properly

        //universal inputs
        int detail = 64;

        //brick inputs
        double brickScale = 1.0;

        double width = 5.0 * brickScale;
        double height = 15.0 * brickScale;
        double indentMultiplier = 0.66;
        double heightMultiplier = 0.75;
        double ringCutout = 1.0;
        double ringCutoutSize = 0.8;

        //board inputs
        double boardScale = 1.1;

        double boardSize = (width * 10) * boardScale;
        double space = 1.5 * boardScale;
        double boardHeight = 3.0 * boardScale;
        double brickHoleSize = (width * 1.5) * boardScale;
        double brickHoleDepth = (boardHeight * 0.5) * boardScale;

        // Initializes an ArrayList to hold our objects
        ArrayList<Geometry3D> resArray = new ArrayList<>();

        // Initializes a new Square object
        Square square = new Square(width, height, detail, indentMultiplier, heightMultiplier, ringCutout, ringCutoutSize);

        // Initializes a new Circular object
        Circular circular = new Circular(width, height, detail, indentMultiplier, heightMultiplier, ringCutout, ringCutoutSize);

        // Intializes a new Board object
        Board board = new Board(boardSize, space, boardHeight, brickHoleSize, brickHoleDepth, detail);

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
        Geometry3D res5 = circular.getGeometry(csg, true, true);
        resArray.add(res5);
//        csg.view(res5);

        // Circular low hollow
        Geometry3D res6 = circular.getGeometry(csg, false, true);
        resArray.add(res6);
//        csg.view(res6);

        // Circular high
        Geometry3D res7 = circular.getGeometry(csg, true, false);
        resArray.add(res7);
//        csg.view(res7);

        // Circular low
        Geometry3D res8 = circular.getGeometry(csg, false, false);
        resArray.add(res8);
//        csg.view(res8);

        // Board
        Geometry3D res9 = board.getGeometry(csg);
        resArray.add(res9);
//        csg.view(res9);

        Geometry3D resFinal = csg.union3D(resArray);

        csg.view(resFinal);
    }
}