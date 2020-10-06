// Draw PacMan
void setup(){
  // Set the size, background
  size(1000, 500);
  background(255);
  
  // Set the Pacman colour
  fill(255,204, 4);
  strokeWeight(5);
  strokeJoin(ROUND);
  
  // Pacman Body + Outline
  arc(250, 250, 200, 200, QUARTER_PI,PI+HALF_PI+QUARTER_PI);
  line(250,250, 320, 180);
  line(250,250, 320, 320);
  
  // Ghost Body + Outline
  fill(0, 102, 204);
  noStroke();
  triangle(700, 370, 750, 340, 700, 340);
  triangle(750, 340, 800, 370, 850, 340);
  triangle(900, 370, 850, 340, 900, 340);
  rect(700, 200, 200, 140);
  stroke(0);
  strokeWeight(5);
  arc(800, 210, 200, 200, PI, TWO_PI);
  
  
  // Side lines
  line(700, 210, 700, 370);
  line(900, 210, 900, 370);
  // Bottom lines
  line(700, 370, 750, 340);
  line(800, 370, 750, 340);
  line(800, 370, 850, 340);
  line(900, 370, 850, 340);
  
  // The 3 Dots
  strokeWeight(20);
  ellipse(400, 250, 20, 20);
  ellipse(500, 250, 20, 20);
  ellipse(600, 250, 20, 20);
  // Pacman Eye
  ellipse(250, 200, 20, 20);
  // Ghost eye
  fill(255);
  strokeWeight(10);
  ellipse(750, 200, 20, 20);
  ellipse(850, 200, 20, 20);
}
