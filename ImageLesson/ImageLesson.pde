//Global Variables 
//
//void setup() {};//End setup()
//
//void draw() {}; // End draw()
//
//void keyPressed() {};// End keyPressed()
//
//void mousePressed() {};// End mousePressed
//
//End MAIN Program



//Static to Copy
float imageX, imageY, imageWidth, imageHeight;
//
//CANVAS 
size(750, 500); //Landscape 
//
//Population
imageX = width*0;
imageY = height*0; 
imageWidth = width-1; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides 
imageHeight = height-1; 
//
rect(imageX, imageY, imageWidth, imageHeight); //Background image 
//image();
