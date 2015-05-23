//By WIll Graham
//laser_Game

//x=x+1 = x=x+speedX to make it go abckwards times by -1 or so on so that it changes to negative get thsi shit reflecting.
//area for floats and int's
float x = 0;
float y = 0;
int rad = 1;
// both p's hold press x and y of mouse
float pX = 0; 
float pY = 0;
// both r's hold release of x and y of mouse
float rX = 0;
float rY = 0;
float dY = 0;
float dX = 0;
float m = 0;
float b = 0;
int sSize = 50;
float eX = 50;
float eY = 150;
float rS = 0;

void setup() {
  x=10;
  y=60;
  size(800, 800); //size of screen
  background(40);
  // changes origin of graph
  translate(0, height); 
  scale(1, -1);
  ellipse(eX, eY, sSize, sSize);
} //void setup ends

//point of mouse pressed
void mousePressed() {
  if (mousePressed);

  rX = mouseX;// makes line not draw from previouse mirror
  rY = mouseY;
  pX = mouseX; // draws from last line need to fix
  pY = mouseY;
}//mouse pressed ends

// point of mouse release
void mouseReleased() {
  rX = mouseX;
  rY = mouseY;
}//mouse released ends

// repeats every frame
void draw() {
  if (x == eX && y == eY) { // make work
    noLoop();
  }


  dY = (rY - pY);
  // println(dY);
  dX = (rX - pX);
  // println(dX);
  m = (dY/dX); // calculates slope of points
  b = (pY - (m*pX));

  rS=(m*x)+b;//how does this help
  println(floor(rS));
  println(floor(y));
  if (floor(y) > floor(rS)-2 && floor(y) < floor(rS)+2) { // reflects laser
    x = x*-2;
    y=y*-1;
  } 
  stroke(255);
  if (pX>0 && pY>0 && rX>0 && rY>0) { // stops mirror from drawing at 0,0 to first click
    strokeWeight(3); //thickness of line
    stroke(#A0FDFF);
    line(pX, pY, rX, rY);//draws mirror
  } // end of if
  strokeWeight(2);//thickness of laser
  stroke(255, 0, 0);
  ellipse(x, y, rad, rad); //draws laser

  x=x+1; // moves laser
  y= y+1;
  //how do i get it to reflect off every poin on a line.
} //void draw ends
