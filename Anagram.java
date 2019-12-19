package demo;

import java.util.Arrays;

 class Anagram {

	static boolean isAnagram(String str1, String str2) {
		char tempArray1[] = str1.toCharArray();
		char tempArray2[] = str2.toCharArray();

		Arrays.sort(tempArray1);
		Arrays.sort(tempArray2);

		if (tempArray1.length != tempArray2.length)
			return false;

		for (int i = 0; i < tempArray1.length; i++)
			if (tempArray1[i] != tempArray2[i]) {
				return false;
			}
		return true;

	}

	static void allanagrams(String arr[], int n) {
		for (int i = 0; i < n; i++)
			for (int j = i + 1; j < n; j++) {
				if (isAnagram(arr[i], arr[j]))
					System.out.println(arr[i] + " is anagram of " + arr[j]);

			}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub"
		String arr[] = { "cat", "bat", "act", "tab", "dog" };
		int n = arr.length;
		allanagrams(arr, n);

	}

}
