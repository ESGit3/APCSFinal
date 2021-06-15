public class Tile {
  private boolean isBomb;
  private boolean hasFlag;
  private boolean isCovered;
  private int adjacent;
  private int x;
  private int y;
  private int z;
  
  public Tile(int xcor, int ycor, int zcor) {
    isBomb = false;
    hasFlag = false;
    isCovered = true;
    adjacent = 0;
    x = xcor;
    y= ycor;
    z = zcor;
  }
  
  public boolean getBomb() {
    return isBomb;
  }
  
  public void setBomb() {
    isBomb = true;
  }
  
  public void flag() {
    hasFlag = !hasFlag;
    
  }
  
  public void addAdjacent() {
    adjacent += 1;
  }
  
  public int getAdjacent() {
    return adjacent;
  }
  
  public boolean isUncoveredOrIsFlagged() {
    return !isCovered || hasFlag;
  }
  
  boolean gameEnded = false;
  public void explode() {
    gameEnded = true;
  }
  
  public boolean click(boolean right, int layer) {
    int mouseToX = (int) (mouseX / 20);
    int mouseToY = (int) (mouseY / 20);
    
    if (x == mouseToX && y == mouseToY && layer == z) {
      if (right && isCovered) {
        flag();
      } else {
        if (isBomb) {
          return true;
        } else if (!hasFlag) {
          isCovered = false;
        }
      }
    }
    
    return false;
  }
  
  public void display() {
    if (isCovered) {
      strokeWeight(2);
      fill(222, 222, 222);
      square(x * 20, y * 20, 20);
    } else {
      strokeWeight(2);
      fill(242, 242, 242);
      square(x * 20, y * 20, 20);
      fill(0);
      text(adjacent, x * 20 + 7, y * 20 + 15);
    }
    
    if (hasFlag) {
      ellipse(x * 20 + 10, y * 20 + 10, 10, 10);
    }
    
    if (gameEnded) {
      if (hasFlag) {
        fill(0, 255, 0);
        noStroke();
        ellipse(x * 20 + 10, y * 20 + 10, 10, 10);
        stroke(0);
      } else {
        fill(255, 0, 0);
        noStroke();
        ellipse(x * 20 + 10, y * 20 + 10, 10, 10);
        stroke(0);
      }
    }
  }
}
