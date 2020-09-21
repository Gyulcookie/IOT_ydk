package study6;

class CherryInfo{
	final static String name = "체리";
	static int price = 5000;
	static void discount() {
		price = price -(price/10);
	}
}

public class MyFruit1 extends CherryInfo {
	
	static void discount() {
		price = price -(price/2);
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println(name);
		System.out.println(price);
		discount();
		System.out.println(price);
	}

}
