import processing.serial.*;

Serial myPort;
int starGlow;

float star0;
float star1;
float star2;
float star3;
float star4;
float star5;
float star6;
float star7;
float star8;
float star9;
float star10;
float star11;
float star12;
float star13;

Constellation ursaMajor;
Constellation ursaMinor;
//create ursaArr array for Constellation objects
Constellation[] ursaArr = new Constellation[14];

RandomStar manystars;
//create randomArr array for RandomStar objects
RandomStar[] randomArr = new RandomStar[160];

void setup() {
  size(1200, 750);

  String portName = "/dev/tty.usbmodemfa141";
  myPort = new Serial (this, portName, 9600);
  myPort.bufferUntil('\n');


  //set Ursa Major constellation
  ursaMajor = new Constellation(250, 300, 8);
  ursaArr[0] = ursaMajor;
  ursaArr[1] = new Constellation(ursaMajor.x + 85, ursaMajor.y + 30, ursaMajor.diameter);
  ursaArr[2] = new Constellation(ursaMajor.x + 110, ursaMajor.y + 85, ursaMajor.diameter);
  ursaArr[3] = new Constellation(ursaMajor.x + 160, ursaMajor.y + 155, ursaMajor.diameter * 0.75);
  ursaArr[4] = new Constellation(ursaMajor.x + 135, ursaMajor.y + 220, ursaMajor.diameter * 1.25);
  ursaArr[5] = new Constellation(ursaMajor.x + 225, ursaMajor.y + 280, ursaMajor.diameter * 1.25);
  ursaArr[6] = new Constellation(ursaMajor.x + 280, ursaMajor.y + 230, ursaMajor.diameter * 1.25);


  //set Ursa Minor Constellation
  ursaMinor = new Constellation(950, 250, 10);
  ursaArr[7]= ursaMinor;
  ursaArr[8] = new Constellation(ursaMinor.x - 310, ursaMinor.y - 110, ursaMinor.diameter * 0.75);
  ursaArr[9] = new Constellation(ursaMinor.x - 210, ursaMinor.y - 145, ursaMinor.diameter * 0.6);
  ursaArr[10] = new Constellation(ursaMinor.x - 285, ursaMinor.y - 60, ursaMinor.diameter * 0.6);
  ursaArr[11] = new Constellation(ursaMinor.x - 200, ursaMinor.y - 90, ursaMinor.diameter * 0.6);
  ursaArr[12] = new Constellation(ursaMinor.x - 110, ursaMinor.y - 88, ursaMinor.diameter * 0.6);
  ursaArr[13] = new Constellation(ursaMinor.x - 40, ursaMinor.y - 50, ursaMinor.diameter * 0.5);

  //create random stars
  for (int a = 0; a < randomArr.length; a++) {
    randomArr[a] = new RandomStar(random(width), random(height), random(3));
  }
}

void draw() {
  background(48, 60, 71);

  //use ursaArr array to draw Constellations
  for (int i = 0; i < ursaArr.length; i = i+1) {
    ursaArr[i].display();
    //   if (dist(mouseX, mouseY, ursaArr[i].x, ursaArr[i].y)<20) {
    //     ursaArr[i].glow();
    //   }

    if (star0 > 80) {
      ursaArr[0].glow();
    }
    if (star1 > 70) {
      ursaArr[1].glow();
    }
    if (star2 > 90) {
      ursaArr[2].glow();
    }
    if (star3 > 60) {
      ursaArr[3].glow();
    }
    if (star4 > 60) {
      ursaArr[4].glow();
    }
    if (star5 > 70) {
      ursaArr[5].glow();
    }
    if (star6 > 50) {
      ursaArr[6].glow();
    }
    if (star7 > 70) {
      ursaArr[7].glow();
    }
    if (star8 > 60) {
      ursaArr[8].glow();
    }
    if (star9 > 70) {
      ursaArr[9].glow();
    }
    if (star10 > 50) {
      ursaArr[10].glow();
    }
    if (star11 > 80) {
      ursaArr[11].glow();
    }
    if (star12 > 80) {
      ursaArr[12].glow();
    }
    if (star13 > 80) {
      ursaArr[13].glow();
    }
  }

  //use randomArr array to draw RandomStars
  for (int a = 0; a < randomArr.length; a++) {
    randomArr[a].display();
  }
}

void serialEvent (Serial myPort) {

  // read the serial buffer:
  String myString = myPort.readStringUntil('\n');
  if (myString != null) {
    println(myString);


    myString = trim(myString);
    // split the string at the commas
    // and convert the sections into integers in sensors array:
    //for(int i = 0; i < sensors.length; i++){
    int sensors[] = int(split(myString, ','));
    //}
    
    
    if (sensors.length > 13 ) {
    for (int sensorNum = 0; sensorNum < sensors.length; sensorNum++) {
      print("Sensor " + sensorNum + ": " + sensors[sensorNum] + "\t");
    }
    // add a linefeed at the end:
    println();

    star0 = sensors[0];
    star1 = sensors[1];
    star2 = sensors[2];
    star3 = sensors[3];
    star4 = sensors[4];
    star5 = sensors[5];
    star6 = sensors[6]; 
    star7 = sensors[7];
    star8 = sensors[8];
    star9 = sensors[9];
    star10 = sensors[10];
    star11 = sensors[11];
    star12 = sensors[12];
    star13 = sensors [13];
    }
  }
}
