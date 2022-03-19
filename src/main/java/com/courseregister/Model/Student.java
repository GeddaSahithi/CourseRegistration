package com.courseregister.Model;

public class Student {
	private String name;
	private String course;
	private int fee;
	public Student(String name, String course, int fee) {
		super();
		this.name = name;
		this.course = course;
		this.fee = fee;
	}
	public Student() {
		
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public int getFee() {
		return fee;
	}
	public void setFee(int fee) {
		this.fee = fee;
	}
}
