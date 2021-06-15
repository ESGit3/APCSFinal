Board game = new Board(6, 6, 6); 
int currentLayer = 0;
public void settings() {
  
  size(game.getWidth() * 20 + 110, game.getHeight() * 20);
}


void draw() {
  game.display(currentLayer);
  if (game.testWin()) {
    System.out.println("good job");
  }
  
  
}

void mousePressed() {
  if (mouseButton == RIGHT) {
    for (Tile[][] i : game.getBoard()) {
        for (Tile j[] : i) {
          for (Tile k : j) {
            k.click(true);
          }
        }
      }
  }
  if (mouseButton == LEFT) {
    for (Tile[][] i : game.getBoard()) {
        for (Tile j[] : i) {
          for (Tile k : j) {
            if (k.click(false)) {
            game.endGame();
          }
          }
        }
      } 
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      if (currentLayer != 0) {
        currentLayer--;
      }
    }
    if (keyCode == DOWN) {
      if (currentLayer != 5) {
        currentLayer++;
      }
    }
  }
}
