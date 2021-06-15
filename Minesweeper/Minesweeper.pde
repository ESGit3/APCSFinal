import java.util.*;

ArrayList<Board> game = new ArrayList<Board>();

int currentLayer = 0;
 
public void settings() {
  for (int i = 0; i < 5; i++) {
    game.add(new Board(6, 6));
  }
  
  size(game.get(currentLayer).getWidth() * 20 + 110, game.get(currentLayer).getHeight() * 20);
}


void draw() {
  game.get(currentLayer).display();
  if (game.get(currentLayer).testWin()) {
    System.out.println("good job");
  }
  
  text("currentLayer: " + currentLayer, game.get(currentLayer).getWidth() * 20 + 10, 20);
}

void mousePressed() {
  if (mouseButton == RIGHT) {
    for (Tile[] i : game.get(currentLayer).getBoard()) {
        for (Tile j : i) {
          j.click(true);
        }
      }
  }
  if (mouseButton == LEFT) {
    for (Tile[] i : game.get(currentLayer).getBoard()) {
        for (Tile j : i) {
          if (j.click(false)) {
            game.get(currentLayer).endGame();
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
      if (currentLayer != game.size() - 1) {
        currentLayer++;
      }
    }
  }
}
