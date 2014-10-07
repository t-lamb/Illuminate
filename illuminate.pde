Constellation ursaMajor;
Constellation ursaMinor;
//create ursaArr array for Constellation objects
Constellation[] ursaArr = new Constellation[14];

RandomStar manystars;
//create randomArr array for RandomStar objects
RandomStar[] randomArr = new RandomStar[160];

void setup() {
  size(1000, 600);

  //set Ursa Major constellation
  ursaMajor = new Constellation(145, 200);
  ursaArr[0] = ursaMajor;
  ursaArr[1] = new Constellation(ursaMajor.x + 85, ursaMajor.y + 30);
  ursaArr[2] = new Constellation(ursaMajor.x + 110, ursaMajor.y + 85);
  ursaArr[3] = new Constellation(ursaMajor.x + 160, ursaMajor.y + 155);
  ursaArr[4] = new Constellation(ursaMajor.x + 135, ursaMajor.y + 220);
  ursaArr[5] = new Constellation(ursaMajor.x + 225, ursaMajor.y + 280);
  ursaArr[6] = new Constellation(ursaMajor.x + 280, ursaMajor.y + 230);

  //set Ursa Minor Constellation
  ursaMinor = new Constellation(800, 190);
  ursaArr[7]= ursaMinor;
  ursaArr[8] = new Constellation(ursaMinor.x - 310, ursaMinor.y - 110);
  ursaArr[9] = new Constellation(ursaMinor.x - 210, ursaMinor.y - 145);
  ursaArr[10] = new Constellation(ursaMinor.x - 285, ursaMinor.y - 60);
  ursaArr[11] = new Constellation(ursaMinor.x - 200, ursaMinor.y - 90);
  ursaArr[12] = new Constellation(ursaMinor.x - 110, ursaMinor.y - 88);
  ursaArr[13] = new Constellation(ursaMinor.x - 40, ursaMinor.y - 50);
  
  //create random stars
  for (int a = 0; a < randomArr.length; a++){
    randomArr[a] = new RandomStar(random(width), random(height), random(3));
  }
 
}

void draw() {
  background(48, 60, 71);

  //use ursaArr array to draw Constellations
  for (int i = 0; i < ursaArr.length; i = i+1) {
    ursaArr[i].display();
    if (dist(mouseX, mouseY, ursaArr[i].x, ursaArr[i].y)<20) {
      ursaArr[i].glow();
    }
  }
  
  //use randomArr array to draw RandomStars
  for (int a = 0; a < randomArr.length; a++){
   randomArr[a].display();
  }
}