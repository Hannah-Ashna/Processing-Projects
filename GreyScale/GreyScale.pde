PImage myImage;

// Load and Setup image
void setup() {
  size(500,500);
  myImage = loadImage("apples.jpg");
  image(myImage, 0, 0);
}

void draw() {
  // On mouse click set image to grey scale
  if (mousePressed) {
    for (int y = 0; y < myImage.height; y++) {
      for (int x = 0; x < myImage.width; x++) {
          color Pixel = myImage.get(x, y);
          int r = int(red(Pixel));
          color NewPixelColour = color(r, r, r);
          myImage.set(x, y, NewPixelColour);
      }
    } 
    
  }
  
  // On key press (b or B) reload original image
  if (keyPressed) {
    if (key == 'b' || key == 'B') {
      myImage = loadImage("apples.jpg");
    }
  } 
  
  // Output image
  image(myImage, 0, 0);
}
