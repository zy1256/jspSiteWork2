package com.itwill.db;
/*
 * singleton pattern
 * 
 * ��ü������ �ѹ����ϵ��� �����������ϴ±��
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
