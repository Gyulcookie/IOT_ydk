package study5;

public class TvControl {
	boolean power = false;
	int channel = 0;
	public void power() {
		power = !power;
	}
	public void channelUp() {
		channel+=1;
	}
	public void channelDown() {
		channel -=1;
	}
}
