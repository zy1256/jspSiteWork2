package com.itwill.guest;

public class GuestSQL {
	public final static String SELECTBYGUEST_NO=
			"select * from guest where guest_no=?"; 
	public final static String SELECTALLGUEST=
			"select * from guest order by guest_date desc";
	public final static String INSERTGUEST=
			"insert into guest values(guest_no_seq.nextval,?,sysdate,?,?,?,?)";
	public final static String UPDATEGUEST=
			"update guest set guest_name=?,guest_email=?,guest_homepage=?,guest_title=?,guest_content=? where guest_no=?";
	public final static String DELETEGUEST=
			"delete from guest where guest_no=?";
}
