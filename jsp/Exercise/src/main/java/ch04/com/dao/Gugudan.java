package ch04.com.dao;

public class Gugudan implements java.io.Serializable{
	int num = 5;
	public Gugudan() {}
	
	public int getNum() {
		return num;
	}
	
	public void setNum(int num) {
		this.num = num;
	}
	
	public int getGugudan(int i) {
		return num * i;
	}

}
