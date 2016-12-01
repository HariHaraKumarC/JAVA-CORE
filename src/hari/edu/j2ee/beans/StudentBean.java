package hari.edu.j2ee.beans;

import java.io.Serializable;

public class StudentBean implements Serializable {
	private static final long serialVersionUID = 1L;
	private String name;
	private int age;
	private boolean isMale;
	
	public StudentBean(){
		
	}
	
	public StudentBean(String name,int age,boolean isMale){
		this.name=name;
		this.age=age;
		this.isMale=isMale;
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
	public boolean isMale() {
		return isMale;
	}
	public void setMale(boolean isMale) {
		this.isMale = isMale;
	}

}
