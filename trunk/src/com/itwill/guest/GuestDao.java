package com.itwill.guest;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.itwill.db.RdbmsDao;

public class GuestDao extends RdbmsDao{
	/*
	 * ���ϸ���Ʈ(��ü�б�)
	 */
	public List<Guest> selectAll() throws Exception{
		ArrayList<Guest> guestList=new ArrayList<Guest>();
		
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		try{
			con=getConnection();
			stmt=con.createStatement();
			rs=stmt.executeQuery(GuestSQL.SELECTALLGUEST);
			while (rs.next()) {
				guestList.add(
						new Guest(rs.getInt("guest_no"),
									 rs.getString("guest_name"),
									 rs.getString("guest_date"),
									 rs.getString("guest_email"),
									 rs.getString("guest_homepage"),
									 rs.getString("guest_title"),
									 rs.getString("guest_content")
								 )
						);
			}
			
			
		}finally{
			if(rs!=null)
				rs.close();
			if(stmt!=null)
				stmt.close();
			if(con!=null)
			releaseConnection(con);
		}
		return guestList;
	}
	/*
	 * ���� �󼼺���(1���б�)
	 */
	public Guest selectByGuestNo(int guest_no) throws Exception{
		Guest guest=null;
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try{
			con=getConnection();
			pstmt=con.prepareStatement(GuestSQL.SELECTBYGUEST_NO);
			pstmt.setInt(1, guest_no);
			rs=pstmt.executeQuery();
			if(rs.next()){
				guest=new Guest(
								rs.getInt("guest_no"),
								rs.getString("guest_name"), 
								rs.getString("guest_date"),
								rs.getString("guest_email"),
								rs.getString("guest_homepage"),
								rs.getString("guest_title"), 
								rs.getString("guest_content")
								);
				
			}
		}finally{
			if(con!=null)
				releaseConnection(con);
			
		}
		
		
		return guest;
	}
	
	/*
	 * ���Ͼ���
	 */
	public boolean insert(Guest insertGuest){
		boolean insertOK=false;
		Connection con=null;
		PreparedStatement pstmt=null;
		try{
			con=getConnection();
			pstmt=con.prepareStatement(GuestSQL.INSERTGUEST);
			pstmt.setString(1,insertGuest.getGuest_name());
			pstmt.setString(2,insertGuest.getGuest_email());
			pstmt.setString(3,insertGuest.getGuest_homepage());
			pstmt.setString(4,insertGuest.getGuest_title());
			pstmt.setString(5,insertGuest.getGuest_content());
			int row=pstmt.executeUpdate();
			insertOK=true;
		}catch(Exception e){
			insertOK=false;
			e.printStackTrace();
			
		}finally{
			if(con!=null)
				try {
					releaseConnection(con);
				} catch (Exception e) {
					e.printStackTrace();
				}
			
		}
		
		return insertOK;
	}
	
	/*
	 * ���� ����
	 * 
	 * 
	 */
	public boolean update(Guest updateGuest){
		boolean updateOK=false;
		Connection con=null;
		PreparedStatement pstmt=null;
		try{
			con=getConnection();
			pstmt=con.prepareStatement(GuestSQL.UPDATEGUEST);
			pstmt.setString(1, updateGuest.getGuest_name());
			pstmt.setString(2, updateGuest.getGuest_email());
			pstmt.setString(3, updateGuest.getGuest_homepage());
			pstmt.setString(4, updateGuest.getGuest_title());
			pstmt.setString(5, updateGuest.getGuest_content());
			pstmt.setInt(6, updateGuest.getGuest_no());
			int rows=pstmt.executeUpdate();
			updateOK=true;
		}catch(Exception e){
			e.printStackTrace();
			updateOK=false;
		}finally{
			if(con!=null){
				try {
					releaseConnection(con);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return updateOK;
	}
	/*
	 * ���ϻ���(1������)
	 */
	public boolean delete(int guest_no){
		boolean deleteOK=false;
		Connection con=null;
		PreparedStatement pstmt=null;
		try{
			con=getConnection();
			pstmt=con.prepareStatement(GuestSQL.DELETEGUEST);
			pstmt.setInt(1, guest_no);
			int rows=pstmt.executeUpdate();
			deleteOK=true;
		}catch(Exception e){
			deleteOK=false;
			e.printStackTrace();
		}finally{
			if(con!=null){
				try {
					releaseConnection(con);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		return deleteOK;
	}
}
