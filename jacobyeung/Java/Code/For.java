public class For {
	public static final int LINES = 10;

	public static void main (String[] args){
		for (int i = LINES; i >= 1; i--){
			for (int space = 1; space <= (i - 1); space++){
				System.out.print(" ");
			}
		int stars = 2 * LINES + 1 - 2 * i;
		for (int space = 1; space <= stars; space++){
			System.out.print("*");
			}
		System.out.println("");
		}
	}
} 
			
