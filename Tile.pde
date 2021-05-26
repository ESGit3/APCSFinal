public class Tile {
  private boolean isBomb;
  private boolean hasFlag;
  private int adjacent;
  private int x;
  private int y;
  
  public Tile(int xcor, int ycor) {
    isBomb = false;
    hasFlag = false;
    adjacent = 0;
    x = xcor;
    y= ycor;
  }
  
  public void setBomb() {
    isBomb = true;
  }
  
  public void flag() {
    hasFlag = !hasFlag;
    System.out.println("flagged");
    //add flag drawing here
  }
  
  public void click(boolean right) {
    if ((mouseX > x && mouseX < x + 20) && (mouseY > y && mouseY < y + 20)) {
      if (right) {
        flag();
      }
    }
  }
  
  void draw() {
    strokeWeight(2);
    fill(222, 222, 222);
    square(x * 20, y * 20, 20);
  }
}
