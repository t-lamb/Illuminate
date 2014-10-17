class Constellation {
  float x, y, diameter, alphaSpeed;
  //float diameter = 8;
  float alpha = 80;
  int rings = 3;
  int alphaLow = 70;

  Constellation(float _x, float _y, float _diameter) {
    x = _x;
    y = _y;
    diameter = _diameter;
    alphaSpeed = 2;
  }

  void display() {
    noStroke();
    fill(236, 246, 245, alpha);
    ellipse(x, y, diameter, diameter);

    //draw rings that are slightly larger and less opaque than Constellations
    for (int i = 1; i <= rings; i++) {
      fill(236, 246, 245, alpha-60*i);
      ellipse(x, y, diameter*i, diameter*i);
    }
  }

  void glow() {
    alpha += alphaSpeed;
    if (alpha > 255 || alpha < alphaLow) {
      alphaSpeed = alphaSpeed * -1;
    }
    if (alpha > 180 && alphaSpeed>1) {
      alphaLow = 150;
      alphaSpeed = 1;
    }
  }
}
