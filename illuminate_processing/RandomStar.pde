class RandomStar {
  float x;
  float y;
  float strokeW;

  RandomStar(float _x, float _y, float _strokeW){
    x = _x;
    y = _y;
    strokeW = _strokeW;
  }
  
  void display(){
   stroke(236, 246, 245, 90);
   strokeWeight(strokeW);
   point(x, y);
  }
}
