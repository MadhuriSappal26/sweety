package demo;

public class Diagonal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int i;
		int j;
		int n = 10;

		for (i = 0; i < n; i++) {
			for (j = 0; j < n; j++) {
				if (j == n - i - 1) {
					System.out.print("*");

				} else {
					System.out.print("0");
				}

			}

			System.out.println(" ");

		}

	}

}
