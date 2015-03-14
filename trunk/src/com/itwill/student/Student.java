package com.itwill.student;

public class Student {
	private int no;
	private String name;
	private String clazz;
	public Student() {
		// TODO Auto-generated constructor stub
	}
	
	public Student(int no, String name, String clazz) {
		super();
		this.no = no;
		this.name = name;
		this.clazz = clazz;
	}

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getClazz() {
		return clazz;
	}
	public void setClazz(String clazz) {
		this.clazz = clazz;
	}
	
}
