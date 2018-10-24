public class Glass{
	public static final int SUB_HEIGHT = 3;

	public static void main(String[] args){
		line();
		top();	
		line();
		}
		public static void line(){
			System.out.print("+");
			for (int i = 1; i <= 6; i++){
				System.out.print("-");
			}
			System.out.println("+");
		}
		
		public static void top(){
			for (int i = 1; i <= SUB_HEIGHT; i++){
				System.out.print("|");
				for (int j = 1; j <= (i - 1); j++){
					System.out.print(" ");
				}
				System.out.print("\\");
				int dots = 2 * SUB_HEIGHT - 2 * i;
				for (int j = 1; j <= dots; j++){
					System.out.print(".");
				}
				System.out.print("/");
				for (int j = 1; j <= (i - 1); j++){
					System.out.print(" ");
				}
				System.out.println("|");
		}
	}
}


