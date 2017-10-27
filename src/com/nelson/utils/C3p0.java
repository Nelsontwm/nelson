package com.nelson.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class C3p0 {
	private static DataSource dataSource = new ComboPooledDataSource();
	
	public static Connection getConnection (){
		try {
			return dataSource.getConnection();
		} catch (Exception e) {
			
			throw new RuntimeException("·þÎñÆ÷´íÎó");
		}
	}
	public static void release(Connection con,PreparedStatement pstm,ResultSet rs){
				if(rs!=null){
					try {
						rs.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
					rs = null;
				}
				if(pstm!=null){
					try {
						pstm.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
					pstm = null;
				}
				if(con!=null){
					try {
						con.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
					con = null;
				}
	}
}
