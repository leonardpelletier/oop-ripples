class Ripple {

  //instance variables
  float x, y, speed, size, a;

  //constructor
  Ripple() {
    x = random(0, width);
    y = random(0, height);
    size = random(0, 200);
    speed = 2;
  }

  //behaviour functions
  void act() {
    size = size + speed; //grow
    if (size > 200) {
      x = random(0, width);
      y = random(0, height);
      size = 0;
    }
  }

  void show() {
    a = map(size, 0, 200, 255, 0);
    stroke(255, a);
    ellipse(x, y, size, size/2);
  }
}
