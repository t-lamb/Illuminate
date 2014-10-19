import processing.serial.*;
Serial myPort;

int [] globalSensors = new int[14];
int [] initialVal = new int[14];

Constellation ursaMajor;
Constellation ursaMinor;
//create ursaArr array for Constellation objects
Constellation[] ursaArr = new Constellation[14];

//create randomArr array for RandomStar objects
RandomStar[] randomArr = new RandomStar[160];

void setup() {
  size(1200, 750);

  String portName = "/dev/tty.usbmodemfd131";
  myPort = new Serial (this, portName, 9600);
  myPort.bufferUntil('\n');

  //set Ursa Major constellation
  ursaMajor = new Constellation(250, 300, 8);
  ursaArr[7] = ursaMajor;
  ursaArr[8] = new Constellation(ursaMajor.x + 85, ursaMajor.y + 30, ursaMajor.diameter);
  ursaArr[9] = new Constellation(ursaMajor.x + 110, ursaMajor.y + 85, ursaMajor.diameter);
  ursaArr[10] = new Constellation(ursaMajor.x + 160, ursaMajor.y + 155, ursaMajor.diameter * 0.75);
  ursaArr[11] = new Constellation(ursaMajor.x + 135, ursaMajor.y + 220, ursaMajor.diameter * 1.25);
  ursaArr[12] = new Constellation(ursaMajor.x + 225, ursaMajor.y + 280, ursaMajor.diameter * 1.25);
  ursaArr[13] = new Constellation(ursaMajor.x + 280, ursaMajor.y + 230, ursaMajor.diameter * 1.25);

  //set Ursa Minor Constellation
  ursaMinor = new Constellation(950, 250, 10);
  ursaArr[6]= ursaMinor;
  ursaArr[0] = new Constellation(ursaMinor.x - 310, ursaMinor.y - 110, ursaMinor.diameter * 0.75);
  ursaArr[3] = new Constellation(ursaMinor.x - 210, ursaMinor.y - 145, ursaMinor.diameter * 0.6);
  ursaArr[1] = new Constellation(ursaMinor.x - 285, ursaMinor.y - 60, ursaMinor.diameter * 0.6);
  ursaArr[2] = new Constellation(ursaMinor.x - 200, ursaMinor.y - 90, ursaMinor.diameter * 0.6);
  ursaArr[4] = new Constellation(ursaMinor.x - 110, ursaMinor.y - 88, ursaMinor.diameter * 0.6);
  ursaArr[5] = new Constellation(ursaMinor.x - 40, ursaMinor.y - 50, ursaMinor.diameter * 0.5);

  //set random star values
  for (int a = 0; a < randomArr.length; a++) {
    randomArr[a] = new RandomStar(random(width), random(height), random(3));
  }
}

void draw() {
  background(48, 60, 71);

  //use ursaArr array to draw Constellations
  for (int i = 0; i < ursaArr.length; i = i+1) {
    ursaArr[i].display();

    // Activate glow with mouse
    //   if (dist(mouseX, mouseY, ursaArr[i].x, ursaArr[i].y)<20) {
    //     ursaArr[i].glow();
    //   }

    // Activate glow with sensors
    if (2*globalSensors[i] < initialVal[i]) {
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

    myString = trim(myString);
    // split the string at the commas
    // and convert the sections into integers in sensors array:
    //for(int i = 0; i < sensors.length; i++){
    int sensors[] = int(split(myString, ','));
    //}

    if (sensors.length == 14 ) {
      for (int sensorNum = 0; sensorNum < sensors.length; sensorNum++) {
        print("Sensor " + sensorNum + ": " + sensors[sensorNum] + "\t");
      }
      // add a linefeed at the end:
      println();
      //set sensors to globalSensors array
      for (int i = 0; i < sensors.length; i++) {
        globalSensors[i] = sensors[i];
      }
    }
  }
}

void keyPressed() {
  //hit 'c' to calibrate sensors to new setting
  if (key == 'c' || key == 'C') {
    //sets initial values for sensors to
    //globalSensors value at time of key event
    for (int i = 0; i < initialVal.length; i++) {
      initialVal[i] = globalSensors[i];
    }
  }
}
