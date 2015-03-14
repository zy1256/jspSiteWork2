package com.itwill.db;



import java.sql.Connection;
/*
 * ��� ��������� DaoŬ����(RDB)���� ����ϰԵǴ�
 * �������� ����� �����س��� �θ�Ŭ����
 */
public class RdbmsDao {
	/*
	 * ConnectionFactory.java
	 */
	
	/*
	public Connection getConnection()throws Exception{
		return ConnectionFactory.getConnection();
	} 
	public void releaseConnection(Connection con)throws Exception{
		ConnectionFactory.releaseConnection(con);
	}
	*/
	
	/*
	 * ConnectionPool
	 */
	public Connection getConnection()throws Exception{
		return ConnectionPool.getInstance().getConnection();
	} 
	public void releaseConnection(Connection con)throws Exception{
		ConnectionPool.getInstance().releaseConnection(con);
	}
}
