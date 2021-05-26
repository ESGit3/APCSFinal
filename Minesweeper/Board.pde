public class Board {
  private int width;
  private int height;
  private Tile[][] board;
  
  public Board(int w, int h) {
    width = w;
    height = h;
    
    board = new Tile[width][height];
    
    for (int i = 0; i < width; i++) {
      for (int j = 0; j < height; j++) {
        board[i][j] = new Tile(i, j);
      }
    }
  }
  
  public int getWidth() {
    return width;
  }
  
  public int getHeight() {
    return height;
  }
  
  public void display() {        
    for (int i = 0; i < width; i++) {
      for (int j = 0; j < height; j++) {
        board[i][j].draw();
      }
    }
    
    if (mousePressed && mouseButton == RIGHT) {
      for (Tile[] i : board) {
        for (Tile j : i) {
          j.click(true);
        }
      }
    }
    if (mousePressed && mouseButton == LEFT) {
      System.out.println("left");
    }
  }
}
