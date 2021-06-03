public class Tile {
  private boolean isBomb;
  private boolean hasFlag;
  private boolean isCovered;
  private int adjacent;
  private int x;
  private int y;
  
  public Tile(int xcor, int ycor) {
    isBomb = false;
    hasFlag = false;
    isCovered = true;
    adjacent = 0;
    x = xcor;
    y= ycor;
  }
  
  public void setBomb() {
    isBomb = true;
  }
  
  public void flag() {
    hasFlag = !hasFlag;
    
  }
  
  public void click(boolean right) {
    int mouseToX = (int) (mouseX / 20);
    int mouseToY = (int) (mouseY / 20);
    
    if (x == mouseToX && y == mouseToY) {
      if (right) {
        flag();
      } else {
        isCovered = false;
      }
    }
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
    }
    
    if (hasFlag) {
      ellipse(x * 20 + 10, y * 20 + 10, 10, 10);
    }
  }
}
