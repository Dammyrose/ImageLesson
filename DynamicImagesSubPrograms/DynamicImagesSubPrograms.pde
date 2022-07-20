//Global Variable
PImage pic1, pic2;
//
void setup() {
  //CANVAS 
  size(850, 600); //Landscape 
  //
  populatingVariables();
  imageDraw();
}//End setup()
//
void draw() {//NOte: DRAW Loop repaest 60 lines/ second, static images should be in SETUP, "system resources"
   // Empty DRAW Loop, must be present for JAVA Compiler
};// End draw()
//
void keyPressed() 
{
  rect(0,0, width, height);
};// End keyPressed()
//
void mousePressed() 
{
  imageDraw(); 
};// End mousePressed
//
//End MAIN Program
