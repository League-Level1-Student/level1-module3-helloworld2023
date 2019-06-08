Car a = new Car();
Car b = new Car();
Car c = new Car();
Car d = new Car();
Car e = new Car();
int x = 0;
int y = 0;
void setup(){
  size(800,600);
}
void draw(){
  background(0,0,0);
  fill(0,255,0);
  ellipse(x, y, 20,20);  
}
void displayCars(){
  a.display;
  b.display;
  c.display;
  d.display;
  e.display;
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
                  //Frog Y position goes up
            }
            else if(keyCode == DOWN)
            {
                  //Frog Y position goes down 
            }
            else if(keyCode == RIGHT)
            {
                  //Frog X position goes right
            }
            else if(keyCode == LEFT)
            {
                  //Frog X position goes left
            }
      }
}
