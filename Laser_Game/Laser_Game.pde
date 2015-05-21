//By WIll Graham
//laser_Game

//area for floats and int's
int x = 10;
int y = 30;
int rad = 1;
// both p's hold press x and y of mouse
float px = 0; 
float py = 0;
// both r's hold release of x and y of mouse
float rx = 0;
float ry = 0;
float dY = 0;
float dX = 0;
float m = 0;
float b = 0;
int xDir = 1;
int yDir = 1;
int sSize = 50;
;
void setup() {
  size(800, 800); //size of screen
  background(40);
  // changes origin of graph
  translate(0, height); 
  scale(1, -1);
  ellipse(sX,sY,sX,sY);
} //void setup ends

//point of mouse pressed
void mousePressed() {
  if (mousePressed);
  
    rx = mouseX;// makes line not draw from previouse mirror
    ry = mouseY;
    px = mouseX; // draws from last line need to fix
    py = mouseY;
}//mouse pressed ends

// point of mouse release
void mouseReleased() {
  rx = mouseX;
  ry = mouseY;
}//mouse released ends

// repeats every frame
void draw() {
  
  b = (y - (m*x));
  dY = (ry - py);
  dX = (rx - px);
  m = (dY/dX); // calculates slope of points
  if ((y)==((m*x)+b)) { // reflects laser
    println("bounce");
  }
  stroke(255);
  if (px>0 && py>0 && rx>0 && ry>0) { // stops mirror from drawing at 0,0 to first click
    strokeWeight(2);

    line(px, py, rx, ry);//draws mirror
  } // end of if

  stroke(255, 0, 0);
  ellipse(x, y, rad, rad); //draws laser
  
  x=x+2; // moves laser
  y= y+1;
  //how do i get it to reflect off every poin on a line.
} //void draw ends
