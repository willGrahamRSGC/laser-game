//area for floats and int's
int x = 10;
int y = 30;
int rad = 2;
float px = 0;
float py = 0;
float rx = 0;
float ry = 0;
float a = 0;
float b = 0;
float c = 0;
int xDir = 1;
int yDir = 1;
void setup() {
  size(800, 800); //size of screen
  background(40);
  translate(0, height);
  scale(1, -1);
} //void setup ends

//point of mouse pressed
void mousePressed() {
  if (mousePressed);
  {
    px = mouseX; // draws from last line need to fix
    py = mouseY;
  }
}//mouse pressed ends

// point of mouse release
void mouseReleased() {
  rx = mouseX;
  ry = mouseY;
  rx = px;
  ry = py;
}//mouse released ends

// repeats every frame
void draw() {

  a = (ry - py);
  b = (rx - px);
  c = (a/b); // calculates slope of points
  stroke(255);
  println(px);
  if (px>0 && py>0 && rx>0 && ry>0) { // stops mirror from drawing at 0,0 to first click
    line(px, py, rx, ry);//draws mirror
  } // end of if
  // if (x > c-rad || x < rad){
  //   xDir *= -1;
  // }
  // if (y > c-rad || x < rad){
  //   yDir *= -1;
  // }
  stroke(255, 0, 0);
  ellipse(x, y, rad, rad); //draws laser
  x=x+2; // moves laser
  y= y+1;
  //how do i get it to reflect off every poin on a line.
} //void draw ends
