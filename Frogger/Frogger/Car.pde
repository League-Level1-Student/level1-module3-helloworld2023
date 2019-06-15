public class Car{
private int carX;
private int carY;
private int carSize;
private int carSpeed;
boolean isRight;
public Car(int carX, int carY, int carSize, int carSpeed, boolean isRight){
this.carX = carX;
this.carY = carY;
this.carSize = carSize;
this.carSpeed = carSpeed;
this.isRight = isRight;
}
public int getcarX(){
  return carX;
}
public void setcarX (int x){
  this.carX = x;
}
public int getcarY(){
  return carY;
}
public void setcarY(int y){
  this.carY = y;
}
public int getcarSize(){
  return carSize;
}
public void setcarSize(int si){
  this.carSize = si;
}
public int getcarSpeed(){
  return carSpeed;
}
public void setcarSpeed(int sp){
  this.carSpeed = sp;
}
public boolean getisRight(){
  return isRight;
}
public void setisRight(boolean r){
  isRight = r;
}
void display() {
      fill(0,255,0);
      if(isRight){
         image (carRight, carX, carY);
      }
      else{
        image (carLeft, carX, carY);
      }
}
void updateLeft(){
  carX -= carSpeed;
  if(carX <= 0){
    carX = width;
  }
}
void updateRight(){
  carX += carSpeed;
  if(carX > width){
  carX = 0;
  }
}
}
