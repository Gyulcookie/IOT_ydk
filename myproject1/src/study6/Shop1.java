package study6;

class Product{

	final String name = "mouse";
	final int price = 1000;
	private int amount = 0;
	private int sale = 0;
	
	void Product() {
		System.out.println("== 작업 시작 ==");
	}
	void setAmount(int n) {
		amount +=n;
	}
	int getAmount() {
		return amount;
	}
	void setSale(int n) {
		sale+=n;
	}
	int getSale() {
		return sale;
	}
}

public class Shop1 {

	public static void main(String[] args) {
		// 참조클래스 참조변수 = new 생성자;
		Product p1 = new Product();
		System.out.println("상품 이름 : "+p1.name);
		System.out.println("상품 가격 : "+p1.price);
		System.out.println("상품 수량 : "+p1.getAmount());
		System.out.println("판매량 : "+p1.getAmount());
		System.out.println("================");
		
		p1.setAmount(10);
		System.out.println("상품수량: "+p1.getAmount());
		p1.setAmount(10);
		System.out.println("상품수량: "+p1.getAmount());
	}
}
