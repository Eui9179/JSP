package ch04.com.dao;

public class Person implements java.io.Serializable{
	String name = "eui";
	int age = 26;
	
	public Person() {
		
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
}
