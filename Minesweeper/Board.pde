import java.util.*;

public class Board {
  private int width;
  private int height;
  private int layers;
  private Tile[][][] board;
  private ArrayList<ArrayList<Integer>> mines;
  
  public Board(int w, int h, int l) {
    width = w;
    height = h;
    layers = l;
    mines = new ArrayList<ArrayList<Integer>>();
    
    //initialize board
    board = new Tile[width][height][layers];
    
    for (int i = 0; i < width; i++) {
      for (int j = 0; j < height; j++) {
         for (int k = 0; k < layers; k++) {
           board[i][j][k] = new Tile(i, j, k);
         }
      }
    }
    
    //create and set mines
    Set<ArrayList<Integer>> tempMines = new HashSet<ArrayList<Integer>>();
    
    while (tempMines.size() <= 4) {
      ArrayList<Integer> temp = new ArrayList<Integer>();
      temp.add((int) (Math.random() * (width)));
      temp.add((int) (Math.random() * (height)));
      temp.add((int) (Math.random() * (layers)));
      
      tempMines.add(temp);
    }
    
    for (ArrayList<Integer> i : tempMines) {
      System.out.println(i);
      mines.add(i);
    }
    
    //place mines
    for (ArrayList<Integer> i : mines) {
      board[i.get(0)][i.get(1)][i.get(2)].setBomb();
    }
    
    //adjacent
    for (int i = 0; i < width; i++) {
      for (int j = 0; j < height; j++) {
        for (int k = 0; k < layers; k++) {
          //layer 1
          try {
          if (board[i - 1][j - 1][k - 1].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i - 1][j][k - 1].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i - 1][j + 1][k - 1].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i][j - 1][k - 1].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i][j + 1][k - 1].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i + 1][j - 1][k - 1].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i + 1][j][k - 1].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i + 1][j + 1][k - 1].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i][j][k - 1].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        
        //layer 2
        try {
          if (board[i - 1][j - 1][k].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i - 1][j][k].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i - 1][j + 1][k].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i][j - 1][k].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i][j + 1][k].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i + 1][j - 1][k].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i + 1][j][k].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i + 1][j + 1][k].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        
        //layer 3
        
        try {
          if (board[i - 1][j - 1][k + 1].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i - 1][j][k + 1].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i - 1][j + 1][k + 1].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i][j - 1][k + 1].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i][j + 1][k + 1].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i + 1][j - 1][k + 1].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i + 1][j][k + 1].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        try {
          if (board[i + 1][j + 1][k + 1].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
        
        try {
          if (board[i][j][k + 1].getBomb()) {
            board[i][j][k].addAdjacent();
          }
        } catch (IndexOutOfBoundsException e) {}
      }
      }
    }
  }
  
  public int getWidth() {
    return width;
  }
  
  public int getHeight() {
    return height;
  }
  
  public Tile[][][] getBoard() {
    return board;
  }
  
  public void endGame() {
    for (int i = 0; i < mines.size(); i++) {
      board[mines.get(i).get(0)][mines.get(i).get(1)][mines.get(i).get(2)].explode();
    }
  }
  
  public boolean testWin() {
    for (int i = 0; i < width; i++) {
      for (int j = 0; j < height; j++) {
        for (int k = 0; k < layers; k++) {
          if (!board[i][j][k].isUncoveredOrIsFlagged()) {
            return false;
          }
        }
      }
    }
    return true;
  }
  
  public void display(int k) {        
    for (int i = 0; i < width; i++) {
      for (int j = 0; j < height; j++) {
          board[i][j][k].display();
      }
    }
  }
}
