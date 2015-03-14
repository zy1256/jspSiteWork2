package com.itwill.db;

public class SingletonClassMain {

	public static void main(String[] args) {
		//SingletonClass sc=new SingletonClass();
		SingletonClass sc1 = SingletonClass.getInstance();
		System.out.println(sc1);
		SingletonClass sc2 = SingletonClass.getInstance();
		System.out.println(sc2);
		SingletonClass sc3 = SingletonClass.getInstance();
		System.out.println(sc3);
		SingletonClass sc4 = SingletonClass.getInstance();
		System.out.println(sc4);
	}

}
