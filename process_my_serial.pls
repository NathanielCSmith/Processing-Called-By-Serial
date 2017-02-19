/*************************
  Course | Objects and Space
  Verison | 0.0
  Date | 2016.12.12
  Project | Media Machines
  Name | Nathaniel Smith, Weiwei Hsu
*************************/

import processing.serial.*;
import processing.video.*;

String val;
Serial myPort;

Movie roundOne;
Movie roundTwo;
Movie roundFour;
int potFrame;
int valueCheck=0;

boolean mo = true;


void setup() {
  // create the serial, use speed 230400
  myPort =  null; // ...
  size(640, 360);
  background(0);

  roundSix = new Movie(this, "Round6.mov");
  roundFive = new Movie(this, "Round5.mov");
  roundFour = new Movie(this, "Round4.mov");
  roundThree = new Movie(this, "Round3.mov");
  roundTwo = new Movie(this, "Round2.mov");
  roundOne = new Movie(this, "Round1.mov");

  roundOne.play();
  roundTwo.play();
  roundThree.play();
  roundFour.play();
  roundFive.play();
  roundSix.play();
  
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
}

void movieEvent(Movie m) {
  m.read();
}


void draw() {
if ( myPort.available() == 0) {  // If data is available,
    image(roundOne, 0, 0, width, height);
    val = myPort.read();         // read it and store it in val
  }
  else if ( myPort.available() == 1) {  // If data is available,
    image(roundTwo, 0, 0, width, height);
    val = myPort.read();         // read it and store it in val
  }
  else if ( myPort.available() == 2) {  // If data is available,
    image(roundThree, 0, 0, width, height);
    val = myPort.read();         // read it and store it in val
  }
  else if ( myPort.available() == 3) {  // If data is available,
    image(roundFour, 0, 0, width, height);
    val = myPort.read();         // read it and store it in val
  }
  else if ( myPort.available() == 4) {  // If data is available,
    image(roundFive, 0, 0, width, height);
    val = myPort.read();         // read it and store it in val
  }
  else if ( myPort.available() == 5) {  // If data is available,
    image(roundSix, 0, 0, width, height);
    val = myPort.read();         // read it and store it in val
  } else {
    image (roundOne, 0, 0, width, height);
  }
}
