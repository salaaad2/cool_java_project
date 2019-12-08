import java.util.Random;
import java.util.Scanner;

public class Main
{
	public static void main(String args[])
	{
		Random rand;
		Scanner scan;
		int secret_nbr;
		int guess;
		int count;

		rand = new Random();
		scan = new Scanner(System.in);
		secret_nbr = rand.nextInt(100) + 1;
		guess = 0;
		count = 0;
		System.out.println("Welcome to Guess Game!");
		while (guess != secret_nbr)
		{
			System.out.print("\n" +
							 "Please guess: ");
			guess = scan.nextInt();
			count++;
			if (guess < secret_nbr)
				System.out.println("Too low");
			else if (guess > secret_nbr)
				System.out.println("Too high");
		}
		System.out.println("You won!\n");
		System.out.println("Secret number: " + secret_nbr + "\n" +
						   "Number of tries: " + count);
	}
}
