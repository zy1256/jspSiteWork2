package com.itwill.db;
/*
 * singleton pattern
 * 
 * 객체생성을 한번만하도록 생성을제어하는기법
 */
public class SingletonClass {
	private static SingletonClass _instance=null;
	private SingletonClass() {
		System.out.println(this);
	}
	public static SingletonClass getInstance(){
		if(_instance==null){
			_instance=new SingletonClass();
		}
		return _instance;
	}
}
