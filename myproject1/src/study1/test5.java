package study1;

import java.util.Calendar;

public class test5 {

	public static int diffDate(String a) {
		
		Calendar cal = Calendar.getInstance();
		
		long t_unix = cal.getTimeInMillis()/1000;//현재 유닉스 시간
		
		String[] data = a.split("-");
		
		int y = Integer.parseInt(data[0]);
		int m = Integer.parseInt(data[1]);
		int d = Integer.parseInt(data[2]);
		
		cal.set(y,m-1,d);
		
		long r_unix = cal.getTimeInMillis()/1000;
		
		int min = (int)( r_unix - t_unix )/(60*60*24);
		
		return min;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Calendar cal1 = Calendar.getInstance();
		System.out.println(cal1.getTimeInMillis());
		System.out.println(cal1.getTimeInMillis()/1000 +'초');
	
		long t_unix = cal1.getTimeInMillis()/1000;//현재 유닉스 시간
		
		cal1.set(2020,11,25); // 20년 12월 25일로 시간을 설정 ( 실제 월 - 1 )
		
		long c_unix = cal1.getTimeInMillis()/1000;
		
		long min = c_unix - t_unix; // 초단위 계싼 
		
		long d_day = min/(60*60*24);
		
		System.out.println("크리스마스 D - "+d_day);
		System.out.println("------------------");
		
		String date = "2020-11-11";
		int result = diffDate(date);
		System.out.println(date+"날짜까지 "+result+"일 남았습니다.");
		
		
		
	}

}
