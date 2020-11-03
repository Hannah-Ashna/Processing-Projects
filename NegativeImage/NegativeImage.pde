PImage myInputImage;
PImage myOutputImage;

void setup() {
  size(500, 500);
  myInputImage = loadImage("apples.jpg");
  myOutputImage = myInputImage.copy();
}

void draw() {
  image(myOutputImage, 0, 0); 
}

// Convert image to negative by subtracting R,G,B values by the Max Intensity - 255
void mousePressed(){
  int MaxIntensity = 255;
  for (int y = 0; y < myInputImage.height; y++) {
    for (int x = 0; x < myInputImage.width; x++) {

      color thisPix = myInputImage.get(x, y);
      float r = MaxIntensity - red(thisPix);
      float g = MaxIntensity - green(thisPix);
      float b = MaxIntensity - blue(thisPix);
      color newColour = color(r, g, b);
      myOutputImage.set(x, y, newColour);      
    }
  } 
}

// On key press revert back to original image
void keyPressed(){
  if (key == 'b' || key == 'B') {
    for (int y = 0; y < myInputImage.height; y++) {
      for (int x = 0; x < myInputImage.width; x++) {
        color Original = myInputImage.get(x, y);
        myOutputImage.set(x, y, Original);      
      }
    }
  }
}
