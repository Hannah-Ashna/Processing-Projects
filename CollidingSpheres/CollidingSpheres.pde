// W and S to move up and down, arrow keys to move in X and Z directions

SphereObject sphere1;
SphereObject sphere2;


void setup(){
  size(800,800,P3D);
  sphere1 = new SphereObject(50);
  sphere2 = new SphereObject(50);
  
  
  sphere1.moveMe(200,400,0);
  sphere2.moveMe(600,400,0);
}


void draw(){
  background(0);
  
  if( sphere1.isColliding(sphere2) ){
    fill(0,255,0);
  } else {
    noFill();
    stroke(255);
  }
  
  sphere1.drawMe();
  sphere2.drawMe();
}

void keyPressed() {

  float dist = 20;
  
  if (key == 'w') {
    // up in Y
    sphere1.moveMe(0,-dist,0);
  }

  if (key == 's') {
    // down in Y
    sphere1.moveMe(0,dist,0);
  }

  if (key == CODED) {
    if (keyCode == LEFT) {
      // in X
      sphere1.moveMe(-dist,0,0);
    }
    if (keyCode == RIGHT) { 
      // in x
      sphere1.moveMe(dist,0,0);
    }
    if (keyCode == UP) {
      // in Z
      sphere1.moveMe(0,0, -dist);
    }
    if (keyCode == DOWN) {
      // in Z
      sphere1.moveMe(0,0, dist);
    }
  }
}
