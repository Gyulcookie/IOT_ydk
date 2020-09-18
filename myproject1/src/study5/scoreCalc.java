package study5;

public class scoreCalc {

	public static void mySum(int a, int b) {
		int sum = a + b;
		System.out.println("합계 : " + sum);

	}

	public static void myAvg(int a, int b) {
		int avg = (a + b) / 2;
		System.out.println("평균 :" + avg);
	}

	public int arraySum(int[] arr) {
		int sum = 0;

		for (int i = 0; i < 5; i++) {
			System.out.println(arr[i]);
			sum += arr[i];
		}
		return sum;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int eng = 80;
		int kor = 70;
		int[] score = { 88, 68, 100, 50, 90 };

		System.out.println("배열합계 : " + arraySum(score));
		System.out.println("배열평균 : " + (arraySum(score) / score.length));
	}

}
