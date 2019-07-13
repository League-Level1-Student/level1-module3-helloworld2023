package _05_netflix;

public class Netflix {

	public static void main(String[] args) {
		
		Movie a = new Movie("Stranger Things 3", 2);
		Movie b = new Movie("Kita Kita", 1);
		Movie c = new Movie("Death Note", 3);
		Movie d = new Movie("Violet Evergarden", 4);
		Movie e = new Movie("Meteor Garden", 5);
		System.out.println("Price for Movie " + e +  ": " + e.getTicketPrice());
		NetflixQueue nq = new NetflixQueue();
		nq.addMovie(a);
		nq.addMovie(b);
		nq.addMovie(c);
		nq.addMovie(d);
		nq.addMovie(e);
		nq.printMovies();
		System.out.println("The best movie is: " + nq.getBestMovie());
		System.out.println("The second best movie is: " + nq.getMovie(1));
	}
	
}
