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

  String portName = "/dev/tty.usbmodemfd131";
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
    if (dist(mouseX, mouseY, ursaArr[i].x, ursaArr[i].y)<20) {
      ursaArr[i].glow();
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
  }


  myString = trim(myString);
  // split the string at the commas
  // and convert the sections into integers:
  int sensors[] = int(split(myString, ','));


  for (int sensorNum = 0; sensorNum < sensors.length; sensorNum++) {
    print("Sensor " + sensorNum + ": " + sensors[sensorNum] + "\t");
  }
  // add a linefeed at the end:
  println();


 if (sensors[0] > 132) {
   ursaArr[0].glow();
 }

  // star0 = sensors[0];
  // star1 = sensors[1];
  // star2 = sensors[2];
  // star3 = sensors[3];
  // star4 = sensors[4];
  // star5 = sensors[5];
  // star6 = sensors[6]; 
  // star7 = sensors[7];
  // star8 = sensors[8];
  // star9 = sensors[9];
  // star10 = sensors[10];
  // star11 = sensors[11];
  // star12 = sensors[12];
  // star13 = sensors [13];
}
