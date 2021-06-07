Board test = new Board(15, 15);

public void settings() {
  size(test.getWidth() * 20, test.getHeight() * 20);
}

void draw() {
  test.display();
}

void mousePressed() {
  if (mouseButton == RIGHT) {
    for (Tile[] i : test.getBoard()) {
        for (Tile j : i) {
          j.click(true);
        }
      }
  }
  if (mouseButton == LEFT) {
    for (Tile[] i : test.getBoard()) {
        for (Tile j : i) {
          if (j.click(false)) {
            test.endGame();
          }
        }
      }
  }
}
