package demo;

public class Duplicate {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String str = "abcbsdaa1511wsaabc";
		char[] word = str.toCharArray();
		int i;
		int count;
		int j;

		for (i = 0; i < word.length; i++) {
			count = 1;
			for (j = i + 1; j < word.length; j++) {
				if (word[i] == (word[j])) {

					count = count + 1;

					word[j] = '0';

				}

			}

			if (count > 1 && word[i] != '0') {
				System.out.println(word[i] + " comes " + count + " times ");
			}
		}

	}

}
