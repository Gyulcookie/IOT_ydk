package study6;

public class test10 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String birthday = "1992-1-9";
		String pattern = "[0-9]{4}-[0-9]{1,2}-[0-9]{1,2}";

		System.out.println(birthday.matches(pattern));
	
		String data = "abc";
		String pattern2 = "[a-z]{3}";
		System.out.println(data.matches(pattern2));
		
		String phone = "010-1234-1234";
		String pattern3 = "010-[0-9]{3,4}-[0-9]{4}";
		System.out.println(phone.matches(pattern3));
		
	
	}

}
