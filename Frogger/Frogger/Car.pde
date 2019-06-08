public class Car{
private String carX;
private String carY;
private String carSize;
private String carSpeed;
public Car(carX,carY,carSize, carSpeed){
this.carX = carX;
this.carY = carY;
this.carSize = carSize;
this.carSpeed;
}
void display() {
      fill(0,255,0);
      rect(x , y, size, 50);
}
void updateLeft(){
  carX -= carSpeed;
  if(carX > width){
    carX = 0;
  }
}
void updateRight(){
  carX += carSpeed;
  if(carX > width){
  car X = 0;
  }
}
}
