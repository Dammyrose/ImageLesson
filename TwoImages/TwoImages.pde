//Global Variables 
//
PImage pic1, pic2;
float imageX1, imageY1, imageWidth1, imageHeight1, imageLargerDimension1, imageSmallerDimension1, imageWidthRatio1 =0.0, imageHeightRatio1=0.0;
float picWidthAdjusted1, picHeightAdjusted1;
float imageX2, imageY2, imageWidth2, imageHeight2, imageLargerDimension2, imageSmallerDimension2, imageWidthRatio2 =0.0, imageHeightRatio2=0.0;
float picWidthAdjusted2, picHeightAdjusted2;
Boolean widthLarger1=false, heightLarger1 = false;
Boolean widthLarger2=false, heightLarger2 = false;
//
void setup() {
  //CANVAS 
  size(850, 600); //Landscape 
  //
  //Population of image
  pic1 = loadImage("../Images Used/Landscape Images/Devilman_Crybaby.jpg"); //Dimensions:width 1200 , height 800
  pic2 = loadImage("../Images Used/Landscape Images/Tomorrow-k-drama.jpeg"); //Dimensions: width 1200, height 700
  //Note: Dimensions are found in the image file / Right Click / Properties / Details
  //Alogrithm: Find the larger dimension for aspect ratio (comparison of two numbers)
  int picWidth1 = 1200;
  int picHeight1 = 800;
  int picWidth2 = 1200;
  int picHeight2 = 700;
  //
  if (picWidth1 >= picHeight1) {//Image Dimension Comparison
    //True if Landscape or Square
    imageLargerDimension1 = picWidth1;
    imageSmallerDimension1 = picHeight1;
    widthLarger1 = true;
  } else {
    //False if Portrait
    imageLargerDimension1 = picHeight1;
    imageSmallerDimension1 = picWidth1;
    heightLarger1 = true;
  }//End Image Dimension Comparison
  println(imageSmallerDimension1, imageLargerDimension1, widthLarger1, heightLarger1);//Verify variables details
  //Aspect Ratio 
  //Note: single line IFs can be summarized into IF-ELSE or IF-ElseIf-Else
  //Computer chooses which formulae to execute
  if (widthLarger1 == true )imageWidthRatio1= imageLargerDimension1 / imageLargerDimension1;
  if (widthLarger1 == true )imageHeightRatio1 = imageSmallerDimension1 / imageLargerDimension1;
  if (heightLarger1 == true)imageWidthRatio1 = imageSmallerDimension1 / imageLargerDimension1;
  if (heightLarger1 == true)imageHeightRatio1 = imageLargerDimension1 / imageLargerDimension1;
  //Note:
  // Answers must be 1.0 and between 0, 1 (decimal)
  // Ratio 1.0 similar to style="width:100%" (websites)
  //Ratio of 0-1 similar to style="height:auto" (websites)
  if (picWidth2 >= picHeight2) {//Image Dimension Comparison
    //True if Landscape or Square
    imageLargerDimension2 = picWidth2;
    imageSmallerDimension2 = picHeight2;
    widthLarger2 = true;
  } else {
    //False if Portrait
    imageLargerDimension2 = picHeight2;
    imageSmallerDimension2 = picWidth2;
    heightLarger1 = true;
  }//End Image Dimension Comparison
  println(imageSmallerDimension2, imageLargerDimension2, widthLarger2, heightLarger2);//Verify variables details
  //Aspect Ratio 
  //Note: single line IFs can be summarized into IF-ELSE or IF-ElseIf-Else
  //Computer chooses which formulae to execute
  if (widthLarger2 == true )imageWidthRatio2= imageLargerDimension2 / imageLargerDimension2;
  if (widthLarger2 == true )imageHeightRatio2 = imageSmallerDimension2 / imageLargerDimension2;
  if (heightLarger2 == true)imageWidthRatio2= imageSmallerDimension2 / imageLargerDimension2;
  if (heightLarger2 == true)imageHeightRatio2 = imageLargerDimension2 / imageLargerDimension2;
  //
  //Population of rect()
  imageX1 = width*1/4;
  imageY1= height*0; 
  imageWidth1 = (width-1)*1/2; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides 
  imageHeight1 =(height-1)*1/2;
  imageX2 = width*0;
  imageY2= height*1/2; 
  imageWidth2 = width-1; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides 
  imageHeight2 = (height-1)*1/2;
  //
  //Combination of population of Image with Population of Rect()
  //Adjusted Image Variables for Aspect Ratio: entire image will be smaller due to apect ratio
  picWidthAdjusted1 = imageWidth1 * imageWidthRatio1;
  picHeightAdjusted1= imageHeight1* imageHeightRatio1;
  println(imageX1, imageY1, picWidthAdjusted1, picHeightAdjusted1);//Note: println() also verifies decimal places, complier will truncate
  picWidthAdjusted2 = imageWidth2 * imageWidthRatio2;
  picHeightAdjusted2= imageHeight2 ;//* imageHeightRatio2;
  println(imageX2, imageY2, picWidthAdjusted2, picHeightAdjusted2);//Note: println() also verifies decimal places, complier will truncate
  //
};//End setup()
//
void draw() {
  //rect(imageX1, imageY1, imageWidth1, imageHeight1); //Top Half of CANVAS
  //rect(imageX2, imageY2, imageWidth2, imageHeight2); //Bottom Half of CANVAS 
  image(pic1, imageX1, imageY1, picWidthAdjusted1, picHeightAdjusted1);
  image(pic2, imageX2, imageY2, picWidthAdjusted2, picHeightAdjusted2);
};// End draw()
//
//void keyPressed() {};// End keyPressed()
//
//void mousePressed() {};// End mousePressed
//
//End MAIN Program

//
