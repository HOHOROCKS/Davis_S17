public class SpaceNeedle{

	public static final int SIZE = 2;

	public static void main(String[] args){
	Needle();
	Uptriangle();
	Downtriangle();
	Needle();
	Middle();
	Uptriangle();
	}
	public static void Needle() {
		for (int j = 1; j <= SIZE; j++){
			for (int i = 1; i <= SIZE * 3; i++){
				System.out.print(" ");
			}
			System.out.print("||");
			for (int i =1; i <= SIZE * 3; i++){
				System.out.print(" ");
			}
		System.out.println("");
		}
	}
	public static void Uptriangle() {
		for (int j = 1; j <= SIZE; j++){
			for(int i = SIZE - 1; i >= j; i--){
				System.out.print("   ");			
			}
			System.out.print("__/");
			for (int i = 2; i <= j; i++){
				System.out.print(":::");
			}
			System.out.print("||");
			for (int i = 1; i < j; i++){
				System.out.print(":::");
			}
			
			System.out.print("\\__");

			System.out.println("");
		}
	
		System.out.print("|");
        	for (int k = 1; k <= SIZE * 6; k++){
                	System.out.print("\"");
                }
		System.out.print("|");
		System.out.println("");
	}
	public static void Downtriangle() {
		for (int i = 1; i <= SIZE; i++){
			for(int j = 2; j <= i; j++){
				System.out.print(" ");
			}
			System.out.print("\\_");
			for(int j = SIZE * 3 - 1; j >= i; j--){
				 
				System.out.print("/\\");
				 
			}
			System.out.print("_/");
			System.out.println("");
			
		}
	}
	public static void Middle(){
		for (int i = 1; i <= SIZE * SIZE; i++){
			if (SIZE == 2){
				for (int j = 1; j <= SIZE * 2; j++){
					System.out.print(" ");
				}
			}
			if (SIZE == 4){
				for (int j = 1; j <= SIZE * 2 + 1; j++){
					System.out.print(" ");
				}
			}
			if (SIZE == 6){
				for (int j = 1; j <= SIZE * 2 + 3; j++){
					System.out.print(" ");
				}
			}
			for (int x = 1; x <= 1; x++){
				for (int k = 1; k <= 2; k++){
					System.out.print("|");
					for (int j = 1; j <= SIZE / 2; j++){
						System.out.print("%");
					}
					System.out.print("|");
				}
			}
			System.out.println("");
			}
		}
}
