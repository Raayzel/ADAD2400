//Class for moving particles in the background
class Plank {
 
  PVector position;
  PVector velocity;
  PVector position2;

  
  
  Plank() {
    position = new PVector(random(width), random(height));
    velocity = new PVector(random(-1, 1), random(-1, 1));
  
  }
  
  void display(){
    noStroke();
   fill(200, 240, 255, 100);
    ellipse(position.x, position.y, 1, 2);
     fill(255);
    ellipse(position.x, position.y, 1, 1);
  }
  
  void move(){
    position.add(velocity);
  }
  
  void edges(){
    if((position.x > width+50) || (position.x < -50)){
    velocity.x = velocity.x * -1;
    }
     if((position.y > height+50) || (position.y < -50)){
    velocity.y = velocity.y * -1;
    }
  }
    
}
