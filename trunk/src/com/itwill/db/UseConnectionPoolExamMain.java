package com.itwill.db;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * ����� ���� Ŀ�ؼ� Ǯ(ConnectionPool) ��� ���� DBMS ���� �� ���� ���ҽ� ���� ���ϰ� �߻��ϹǷ� �̸� ������ �Ͽ�
 * �޸𸮻� Connection ��ü�� ������ �ΰ�, �ʿ��� ��� �����ϴ� ��� 3Tier(Client -> Middle Server ->
 * DBMS) ������ �����ڰ� �����Ͽ� DB ó�� �� DBMS�� �����Ǵ� ��Ȳ�� �����ϱ� ���� Ŀ�ؼ� Ǯ ��� ����
 * 
 * @author
 */
public class UseConnectionPoolExamMain {

	public static void main(String[] args) throws SQLException {
		for (int i = 0; i < 300000; i++) {
			Connection con = 
					ConnectionPool.getInstance().getConnection();
			System.out.println(i+":"+con);
			ConnectionPool.getInstance().releaseConnection(con);
		}

	}

}
