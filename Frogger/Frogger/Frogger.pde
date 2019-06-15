Car a = new Car(50,135,5,10,true);
Car b = new Car(100,290,5,10, false);
Car c = new Car(400, 135,5,10, true);
Car d = new Car(300,450,5,10, false);
Car e = new Car(250,360,5,10,true);
Car f = new Car(250,210,5,10,false);
private int x = 422;
private int y = 540;
PImage back;
     PImage carLeft;
     PImage carRight;
     PImage frog;
void setup(){
  size(844,600);
            back = loadImage("froggerBackground.png");
            carLeft = loadImage("carLeft.png");
            carLeft.resize(160,100);
            carRight = loadImage("carRight.png");
            carRight.resize(160,100);
            frog = loadImage("frog.png");
            frog.resize(75,75);
}
void draw(){
  background(back);
            image (frog, x, y);
            displayCars();
            moveCars();
            collision();
}
void displayCars(){
  a.display();
  b.display();
  c.display();
  d.display();
  e.display();
  f.display();
}
void frogOutside(){
  if(x > width){
    x = width;
  }
}
  void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
                  y-=5;
            }
            else if(keyCode == DOWN)
            {
                  y+=5;
            }
            else if(keyCode == RIGHT)
            {
                  x+=5;
            }
            else if(keyCode == LEFT)
            {
                  x-=5;
            }
      }
}
boolean intersects(Car a) {
  if(a.getisRight() == true){
    //stroke (255,0,0);
    //noFill();
    //rect(a.getcarX()-8,a.getcarY()+20, carRight.width+5, carRight.height-40);
      if ((y > a.getcarY()+20 && y < a.getcarY()+carRight.height-20) && (x > a.getcarX()-8 && x < a.getcarX()+carRight.width-3)){
        exit();   
        return true;
      }
      else {
             return false;
      }
  }
  else{
    stroke (255,0,0);
    noFill();
    rect(a.getcarX(),a.getcarY()+20, carLeft.width+20, carLeft.height-60);
      if ((y > a.getcarY()+20 && y < a.getcarY()+carLeft.height-40) && (x > a.getcarX() && x < a.getcarX()+carLeft.width+20)){
        exit();   
        return true;
      }
      else {
             return false;
      }
  }
}
void collision(){
  intersects(a);
  intersects(b);
  intersects(c);
  intersects(d);
  intersects(e);
  intersects(f);
}
public void updateCar(Car a){
  if(a.getisRight() == true){
    a.updateRight();
  }
  else{
    a.updateLeft();
  }
}
public void moveCars(){
  updateCar(a);
  updateCar(b);
  updateCar(c);
  updateCar(d);
  updateCar(e);
  updateCar(f);
}
