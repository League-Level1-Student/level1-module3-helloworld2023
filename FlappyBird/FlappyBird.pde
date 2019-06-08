int x = 50;
int y = 250;
int px = 500;
int upperPipeHeight = (int) random(100,300);
int birdVelocity = 5;
int gravity = 1;
int score = 0;
boolean isPassed = false;
void setup(){
  size(500,400);
}
void draw(){
  background(52, 196, 214);
  fill(231,234,38);
  stroke(0, 0, 0);
  ellipse(x, y,15,15);
  if(mousePressed){
    y -= birdVelocity;
  }
  y += gravity;
  teleportPipes();
  fill(60,201,32);
  rect(px, 0, 20, upperPipeHeight);
  fill(60,201,32);
  rect(px, upperPipeHeight + 50, 20, height);
  px--;
  rect(0,height,500,0);
  if(intersectsPipes()){
    print("Game Over ");
    exit();
  }
  if(hitsGround()){
    print("Game Over ");
    exit();
  }
  fill(0,0,0);
  text("Score: " + score, 430, 15);
}
public void teleportPipes(){
   if(px==0){
   px=width;
   upperPipeHeight = (int) random(100,300);
   isPassed = false;
  }
}
boolean intersectsPipes() { 
     if (y < upperPipeHeight && x > px && x < (px+20)){
          return true; }
     else if (y>upperPipeHeight+50 && x > px && x < (px+20)) {
          return true;
        }
     else if((x > px+20 && x < px+30) && (y >= upperPipeHeight) && y <= upperPipeHeight+50){
        if(isPassed == false){
          isPassed = true;
          score++;
        }
        return false;
        }
     else {
       return false; 
   }
}
boolean hitsGround() {
  if(y==height){
    return true;
  }
  else{
    return false;
  }
}
