Board test = new Board(50, 30);

public void settings() {
  size(test.getWidth() * 20, test.getHeight() * 20);
}

void draw() {
  test.display();
}
