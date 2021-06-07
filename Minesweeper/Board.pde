import java.util.*;

public class Board {
  private int width;
  private int height;
  private Tile[][] board;
  private ArrayList<ArrayList<Integer>> mines;
  
  public Board(int w, int h) {
    width = w;
    height = h;
    mines = new ArrayList<ArrayList<Integer>>();
    
    //initialize board
    board = new Tile[width][height];
    
    for (int i = 0; i < width; i++) {
      for (int j = 0; j < height; j++) {
        board[i][j] = new Tile(i, j);
      }
    }
    
    //create and set mines
    Set<ArrayList<Integer>> tempMines = new HashSet<ArrayList<Integer>>();
    
    while (tempMines.size() <= 15) {
      ArrayList<Integer> temp = new ArrayList<Integer>();
      temp.add((int) (Math.random() * (width)));
      temp.add((int) (Math.random() * (height)));
      
      tempMines.add(temp);
    }
    
    for (ArrayList<Integer> i : tempMines) {
      System.out.println(i);
      mines.add(i);
    }
    
    //place mines
    for (ArrayList<Integer> i : mines) {
      board[i.get(0)][i.get(1)].setBomb();
    }
    
    //adjacent
    for (int i = 0; i < width; i++) {
      for (int j = 0; j < height; j++) {
        try {
          if (board[i - 1][j - 1].getBomb()) {
            board[i][j].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i - 1][j].getBomb()) {
            board[i][j].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i - 1][j + 1].getBomb()) {
            board[i][j].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i][j - 1].getBomb()) {
            board[i][j].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i][j + 1].getBomb()) {
            board[i][j].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i + 1][j - 1].getBomb()) {
            board[i][j].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i + 1][j].getBomb()) {
            board[i][j].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i + 1][j + 1].getBomb()) {
            board[i][j].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
      }
    }
  }
  
  public int getWidth() {
    return width;
  }
  
  public int getHeight() {
    return height;
  }
  
  public Tile[][] getBoard() {
    return board;
  }
  
  public void endGame() {
    for (int i = 0; i < mines.size(); i++) {
      board[mines.get(i).get(0)][mines.get(i).get(1)].explode();
    }
  }
  
  public void display() {        
    for (int i = 0; i < width; i++) {
      for (int j = 0; j < height; j++) {
        board[i][j].display();
      }
    }
  }
}
