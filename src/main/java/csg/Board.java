package csg;

import org.abstractica.javacsg.Geometry2D;
import org.abstractica.javacsg.Geometry3D;
import org.abstractica.javacsg.JavaCSG;

public class Board {
    private final double boardSize;
    private final double space;
    private final double height;
    private final double brickHoleSize;
    private final double brickHoleDepth;
    private final int detail;

    public Board(double boardSize, double space, double height, double brickHoleSize, double brickHoleDepth, int detail) {
        this.boardSize = boardSize;
        this.space = space;
        this.height = height;
        this.brickHoleSize = brickHoleSize;
        this.brickHoleDepth = brickHoleDepth;
        this.detail = detail;
    }

    private Geometry2D getCircle2D(JavaCSG csg) {
        Geometry2D circle2D = csg.circle2D(brickHoleSize, detail);
        return circle2D;
    }

    private Geometry3D getCircle3D(JavaCSG csg) {
        Geometry3D circle3D;
        circle3D = csg.linearExtrude(brickHoleDepth, false, getCircle2D(csg));
        return circle3D;
    }

    // creates a 2D board
    private Geometry2D getBoard2D(JavaCSG csg) {
        Geometry2D rect = csg.rectangle2D(boardSize, boardSize);
        return rect;
    }

    // extrudes the 2D board into a 3D Board
    private Geometry3D getBoard3D(JavaCSG csg) {
        Geometry2D rect2D = getBoard2D(csg);
        Geometry3D res = csg.linearExtrude(height, false, rect2D);
        return res;
    }

    public Geometry3D getGeometry(JavaCSG csg) {

        // creates a 3D board
        Geometry3D board = getBoard3D(csg);

        // creates outer board ring
        Geometry3D boardRing = csg.flatRing3D(boardSize - space * 2, boardSize - space, brickHoleDepth * 0.5, detail, true);

        // moves the board ring to the top of the board
        boardRing = csg.translate3DZ(height).transform(boardRing);

        // cuts out the outer board ring from the board
        board = csg.difference3D(board, boardRing);

        // creates holes for bricks on the board
        Geometry3D boardBrickHole = getCircle3D(csg);

        // moves the brick hole to the top of the board on Z-axis
        boardBrickHole = csg.translate3DZ(height*0.5).transform(boardBrickHole);

        // moves the brick hole to be centered on the board on the X-axis
        boardBrickHole = csg.translate3DX(boardSize * 0.5 - space*1.75).transform(boardBrickHole);

        // moves the brick hole to the side of the board on the Y-axis
        boardBrickHole = csg.translate3DY(boardSize * 0.5 - space*1.5).transform(boardBrickHole);

        // rotates the board 45 degrees
        board = csg.rotate3DZ(csg.degrees(45)).transform(board);

        for (int i = 1; i <= 4; i++) {
            for (int j = 1; j <= 4; j++) {
                // moves the board brick holes
                Geometry3D translatedBoardBrickHoles = csg.translate3D(-(brickHoleSize + space) * i, -(brickHoleSize + space) * j, 0).transform(boardBrickHole);

                // cuts out the moved board brick holes
                board = csg.difference3D(board, translatedBoardBrickHoles);
            }
        }
        board = moveBoard(csg, board);

        return board;
    }

    // moves the final board, so that it's not ontop of the bricks
    private Geometry3D moveBoard(JavaCSG csg, Geometry3D board) {
        double distance = 80.0;
        board = csg.translate3DX(distance).transform(board);
        return board;
    }
}
