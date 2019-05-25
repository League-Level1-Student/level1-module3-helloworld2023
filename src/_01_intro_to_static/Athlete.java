package _01_intro_to_static;

public class Athlete {

	 static int nextBibNumber = 1;
     static String raceLocation = "New York";
     static String raceStartTime = "9.00am";

     String name;
     int speed;
     int bibNumber;

Athlete (String name, int speed){
     this.name = name;
     this.speed = speed;
     bibNumber = nextBibNumber++;
}

public static void main(String[] args) {
     
Athlete Erin = new Athlete ("Erin", 20);
Athlete Norah = new Athlete ("Norah", 17);
System.out.println(Erin.name + " " + Erin.bibNumber + " " + Erin.raceLocation);
System.out.println(Norah.name + " " + Norah.bibNumber + " " + Norah.raceLocation);
//print their names, bibNumbers, and the location of their race. }
	
}
}
