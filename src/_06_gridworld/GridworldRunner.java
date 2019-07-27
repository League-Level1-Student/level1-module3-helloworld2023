package _06_gridworld;

import java.awt.Color;
import java.util.Random;
import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class GridworldRunner {

	public static void main(String[] args) {
	World w = new World();
	w.show();
	Bug a = new Bug();
	Bug b = new Bug();
	Location one = new Location(0,0);
	w.add(one, a);
	Location two = w.getRandomEmptyLocation();
	w.add(two, b);
	b.setColor(Color.blue);
	b.turn();
	b.turn();
	Location left = new Location(two.getRow(), two.getCol()-1);
	Location right = new Location(two.getRow(), two.getCol()+1);
	//Location right = new Location();
	Flower l = new Flower();
	w.add(left, l);
	Flower r = new Flower();
	w.add(right, r);
	int counter = 0;
	while(counter<96) {
	w.add(w.getRandomEmptyLocation(), new Flower());
	counter++;
	}
	}
}
