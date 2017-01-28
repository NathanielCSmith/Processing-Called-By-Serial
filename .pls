/*************************
  Course | Objects and Space
  Verison | 0.0
  Date | 2016.12.12
  Project | Media Machines
  Name | Nathaniel Smith, Weiwei Hsu
*************************/

import processing.serial.*;
import processing.video.*;


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

  //roundFour = new Movie(this, "Round4.mov");
  //roundTwo = new Movie(this, "Round2.mov");
  roundOne = new Movie(this, "Round1.mov");

  //roundOne.play();

}

void serialEvent(Serial myPort) {
  String message;
  // is there actually any data?
  if (myPort.available() > 0) {
    // yes, put it in message.
    message = myPort.readStringUntil('\n');
  } else {
    // no, do nothing.
    return;
  }
  if (message == null) {
    // there is not actually a full message
    return;
  }
  if ("team01\t10".equals(message)) {
    //play video 1 for that event
    roundOne.play();
  } else { //this maps in button press quantity function arduino make 8 like this 4 red 4 blue
    // Do nothing
    return;
  } 
}


void movieEvent(Movie m) {
  m.read();
}


void draw() {
  image(roundOne, 0, 0, width, height);
  //if (mo == true) { 
  //  
  //} else {
  //  image (roundOne, 0, 0, width, height);
  //}

  //if (mo && roundOne.time() >= roundOne.duration()) {
  //  roundOne.stop();
  //  mo = false;
  //  roundTwo.play();
}
