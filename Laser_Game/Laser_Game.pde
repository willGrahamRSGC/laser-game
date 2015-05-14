//area for floats and int's
int x = 10;
int y = 0;
float px = 0;
float py = 0;
float rx = 0;
float ry = 0;

void setup(){
  size(800,800); //size of screen
  translate(0,height);
  scale(1,-1);
} //void setup ends
void mousePressed(){
  if (mousePressed);{
  px = mouseX;
  py = mouseY;
  }
}

void mouseReleased(){
 rx = mouseX;
 ry = mouseY;
}
void draw(){
  stroke(255,0,0);
ellipse(x,30,2,2); //draws laser
x=x+2; // moves laser
} //void draw ends
