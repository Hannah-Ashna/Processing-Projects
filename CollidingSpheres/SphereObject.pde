class SphereObject {

  // Class Variables
  float sphereRadius = 0;
  float xLoc = 0;
  float yLoc = 0;
  float zLoc = 0;

  // Initialise the sphere
  SphereObject(float rad) {
    sphereRadius = rad;
  }

  // Detect collision with other spheres
  boolean isColliding(SphereObject other) {
    float maxDist = dist(xLoc, yLoc, zLoc, other.xLoc, other.yLoc, other.zLoc);
    
    if (maxDist <= (sphereRadius + other.sphereRadius)){
      return true;
    }

    return false;
  }

  // Move the sphere
  void moveMe(float dx, float dy, float dz) {
    xLoc = xLoc + dx;
    yLoc = yLoc + dy;
    zLoc = zLoc + dz;
  }
  
  // Draw the sphere
  void drawMe() {
    pushMatrix();
    translate(xLoc, yLoc, zLoc);
    stroke(255);
    sphere(sphereRadius);
    popMatrix();
  }
}
