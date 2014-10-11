//open library
import processing.serial.*;

Serial myPort;
int starGlow;

Constellation ursaMajor;
Constellation ursaMinor;
//create ursaArr array for Constellation objects
Constellation[] ursaArr = new Constellation[14];

RandomStar manystars;
//create randomArr array for RandomStar objects
RandomStar[] randomArr = new RandomStar[160];
boolean first_contact = false;
void setup() {
  size(1000, 600);


  String portName = "/dev/tty.usbmodemfa141";
  myPort = new Serial (this, portName, 9600);
  println("opened port");
  myPort.bufferUntil('\n');

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
  for (int a = 0; a < randomArr.length; a++) {
    randomArr[a] = new RandomStar(random(width), random(height), random(3));
  }
}

void draw() {
  background(48, 60, 71);

  //use ursaArr array to draw Constellations
  for (int i = 0; i < ursaArr.length; i = i+1) {
    ursaArr[i].display();
    //ursaArr[i].setAlpha(40+i);
    //ursaArr[i].glow();
    // if (starGlow > 25 && starGlow < 50 ) {
    //   ursaArr[i].glow();
    // }
  }

  //use randomArr array to draw RandomStars
  for (int a = 0; a < randomArr.length; a++) {
    randomArr[a].display();
  }
}

void serialEvent (Serial myPort) {
  //read one line at a time
  String line = myPort.readStringUntil('\n');
  //print that line
  //println(line);
  
  if(line != null){
    // //first contact will be false first time
    // if(first_contact == false){
    //    if(line.equals("hello")){
    //       myPort.clear();
    //        //after first time, first contact will be true
    //       first_contact = true;
    //       //write to Arduino Serial Monitor to execute loop
    //       myPort.write("A");
    //    }
      
    // } else {
      //remove new line character at the end
      line.trim();
      float input_alpha = float(line);
      println("getting data");
      ursaArr[1].setAlpha(
      println(line);
    //}
    //write to port to get more data
    myPort.write("A");
  }

  //starGlow = myPort.read();
 // println(starGlow);
}
