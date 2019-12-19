package demo;

class Ana {

	static int total_no_char = 256;

	static boolean isAnagram(String str1, String str2) {
		int[] count1 = new int[total_no_char];
		int[] count2 = new int[total_no_char];
		int i;
		for (i = 0; i < str1.length() && i < str2.length(); i++) {
			count1[str1.charAt(i)]++;
			//System.out.print(str1.charAt(i));
			count2[str2.charAt(i)]++;
			//System.out.print(str2.charAt(i));
		}
		System.out.println("====================> " + count1);
		System.out.println("====================> " + count2);
		
		if (str1.length() != str2.length())
			return false;
		
		for (i = 0; i < total_no_char; i++)
			if (count1[i] != count2[i])
				return false;
		return true;
	}

	static void allanagrams(String arr[], int n) {
		for (int i = 0; i < n; i++)
			for (int j = i + 1; j < n; j++) {
				if (isAnagram(arr[i], arr[j])) {
					System.out.println(arr[i] + " is anagram of " + arr[j]);
				}
			}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String arr[] = { "cat", "bat", "god", "tab", "dog", "act", "efg" };
		int n = arr.length;
		allanagrams(arr, n);

	}
}
