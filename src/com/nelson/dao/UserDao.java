package com.nelson.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.nelson.domain.User;
import com.nelson.utils.C3p0;

public class UserDao {
	
	public ArrayList<User> getAllUser() {
		ArrayList<User> list = new ArrayList<User>();
		Connection con = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String sql = "select * from user_ifon";

		try {
			con = C3p0.getConnection();
			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();
			while (rs.next()) {
				User u = new User();
				u.setId(rs.getInt("id"));
				u.setUsername(rs.getString("username"));
				u.setPassword(rs.getString("password"));
				u.setSex(rs.getString("sex"));
				u.setEmail(rs.getString("email"));
				u.setPhone(rs.getString("phone"));

				list.add(u);

			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		C3p0.release(con, pstm, rs);
		return list;
		
	}
	
	public boolean Check(String username,String password) throws Exception {
		boolean c = false;
		Connection con = C3p0.getConnection();
		String sql = "select * from user_ifon where username =? and password =?";
		PreparedStatement pstm = con.prepareStatement(sql);
		pstm.setString(1, username);
		pstm.setString(2, password);
		ResultSet rs = pstm.executeQuery();
		if(rs.next())
			c=true;
		else
			c=false;
		return c;
	}
	
	public void add(User u) throws Exception{
		Connection con = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		String sql = "insert into user_ifon(username,password,sex,email,phone) values(?,?,?,?,?)";
		
		
			con = C3p0.getConnection();
			pstm = con.prepareStatement(sql);
			pstm.setString(1,u.getUsername());
			pstm.setString(2,u.getPassword());
			pstm.setString(3,u.getSex());
			pstm.setString(4,u.getEmail());
			pstm.setString(5, u.getPhone());
			
			int n = pstm.executeUpdate();
			
			C3p0.release(con, pstm, rs);
				
			
		
	}
	
	public boolean del(int id) throws Exception{
		Connection con = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		boolean c = false;
		String sql = "delete from user_ifon where id = ?";
		
		con = C3p0.getConnection();
		pstm = con.prepareStatement(sql);
		pstm.setInt(1, id);
		
		int n = pstm.executeUpdate();
		if(n>0)
			c = true;
		else
			c = false;
		return c;
	}
	
	public boolean update(User u) throws Exception{
		Connection con = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		boolean c = false;
		String sql = "update user_ifon set username=?,password=?,sex=?,email=?,phone=? where id = ?";
		
		pstm = C3p0.getConnection().prepareStatement(sql);
		pstm.setString(1, u.getUsername());
		pstm.setString(2, u.getPassword());
		pstm.setString(2, u.getSex());
		pstm.setString(4, u.getEmail());
		pstm.setString(5, u.getPhone());
		
		int n = pstm.executeUpdate();
		if(n>0)
			c = true;
		else
			c = false;
		return c;
	}
	
	
	public void delt(int id) throws Exception{
		String sql ="delete from user_ifon where id = ?";
		Connection con = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		pstm = C3p0.getConnection().prepareStatement(sql);
		
		pstm.setInt(1, id);
		pstm.executeUpdate();
		
		C3p0.release(con, pstm, rs);
	}
	
	
}
