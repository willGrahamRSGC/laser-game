//area for floats and int's
int x = 10;
int y = 0;
float px = 0;
float py = 0;
float rx = 0;
float ry = 0;
float a = 0;
float b = 0;
float c = 0;
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
}//mouse released ends

// repeats every frame
void draw() {
  a = (ry - py);
  b = (rx - px);
  c = (a/b); // calculates slope of points
stroke(255);
line(px,py,rx,ry);
  stroke(255, 0, 0);
  ellipse(x, 30, 2, 2); //draws laser
  x=x+2; // moves laser
  // px = mouseX;
  // py = mouseY;
  // rx = mouseX;
  // ry = mouseY;
} //void draw ends
