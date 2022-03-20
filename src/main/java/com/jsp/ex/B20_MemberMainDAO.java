package com.jsp.ex;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class B20_MemberMainDAO {

	private DataSource ds;
	
	public B20_MemberMainDAO() {
		// TODO Auto-generated constructor stub
		System.out.println("B20_MemberMainDAO.java : B20_MemberMainDAO");
		try {
			Context context = new InitialContext();
			ds = (DataSource)context.lookup("java:comp/env/jdbc/Oracle11g");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<B20_MemberDTO> memberSelect(){
		
		ArrayList<B20_MemberDTO> dtos = new ArrayList<B20_MemberDTO>();
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		System.out.println("B20_MemberMainDAO.java : memberSelect()");
		try {
			//con = DriverManager.getConnection(url, uid, upw);
			con = ds.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery("select * from member_main");
			
			while(rs.next()) {
				String name = rs.getString("name");
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String phone1 = rs.getString("phone1");
				String phone2 = rs.getString("phone2");
				String phone3 = rs.getString("phone3");
				String gender = rs.getString("gender");
				
				B20_MemberDTO dto = new B20_MemberDTO(name, id, pw, phone1, phone2, phone3, gender);
				dtos.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(con != null) con.close();
				if(stmt != null)stmt.close();
				if(rs != null)rs.close();
			} catch(Exception e1) {
				e1.printStackTrace();
			}
		}
		System.out.println("B20_MemberMainDAO.java : before return");
		return dtos;
	}
	
}
