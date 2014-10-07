class Constellation {
  float x;
  float y;
  float diameter = 8;
  float alpha = 80;
  float alphaSpeed;

  Constellation(float _x, float _y) {
    x = _x;
    y = _y;
    alphaSpeed = 2;
  }

  void display() {
    noStroke();
    fill(236, 246, 245, alpha);
    ellipse(x, y, diameter, diameter);
    //fill(236, 246, 245, alpha -100);
    //ellipse(x, y, diameter * 2.5, diameter * 2.5);
    // if (alpha > 10 && alpha <180) {
    //   fill(236, 246, 245, alpha-200);
    //   ellipse(x, y, diameter * 3.5, diameter * 3.5);
    // }
  }

  void glow() {
    alpha += alphaSpeed;
    if (alpha > 255 || alpha < 20) {
      alphaSpeed = alphaSpeed * -1;
    }
  }
}
