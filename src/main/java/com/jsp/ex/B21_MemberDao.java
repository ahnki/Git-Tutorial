package com.jsp.ex;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class B21_MemberDao {
	public static final int MEMBER_NONEXISTENT = 0;
	public static final int MEMBER_EXISTENT = 1;
	public static final int MEMBER_JOIN_FAIL = 0;
	public static final int MEMBER_JOIN_SUCCESS = 1;
	public static final int MEMBER_MODIFY_FAIL = 0;
	public static final int MEMBER_MODIFY_SUCCESS = 1;
	public static final int MEMBER_LOGIN_PW_NO_GOOD = 0;
	public static final int MEMBER_LOGIN_SUCCESS = 1;
	public static final int MEMBER_LOGIN_IS_NOT = -1;
	
	private static B21_MemberDao instance = new B21_MemberDao();
	
	private B21_MemberDao() {
		// TODO Auto-generated constructor stub
	}
	
	public static B21_MemberDao getInstance() {
		return instance;
	}
	
	public int insertMember(B21_MemberDto dto) {
		int ri = 0;
		
		Connection connection = null;
		PreparedStatement pstmt = null;
		String query = "insert into members values (?,?,?,?,?,?)";
		
		System.out.println("insertMember() : query[" + query + "]");
		
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.geteMail());
			pstmt.setTimestamp(5, dto.getrDate());
			pstmt.setString(6, dto.getAddress());
			int i = pstmt.executeUpdate();
			System.out.println("executeUpdate() : i[" + i + "]");
			
			if(i == 1) {			
				ri = B21_MemberDao.MEMBER_JOIN_SUCCESS;
			} else {
				ri = B21_MemberDao.MEMBER_JOIN_FAIL;
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(connection != null) connection.close();
			} catch (Exception e1) {
				// TODO: handle exception
				e1.printStackTrace();
			}
		}
		
		return ri;
	}
	
	public int updateMember(B21_MemberDto dto) {
		int ri = 0;
		
		Connection connection = null;
		PreparedStatement pstmt = null;
		String query = "update members set pw=?, eMail=?, address=? where id=?";
		
		System.out.println("updateMember() : query[" + query + "]");
		
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, dto.getPw());
			pstmt.setString(2, dto.geteMail());
			pstmt.setString(3, dto.getAddress());
			pstmt.setString(4, dto.getId());
			int i = pstmt.executeUpdate();
			System.out.println("executeUpdate() : i[" + i + "]");
			
			if(i == 1) {			
				ri = B21_MemberDao.MEMBER_MODIFY_SUCCESS;
			} else {
				ri = B21_MemberDao.MEMBER_MODIFY_FAIL;
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(connection != null) connection.close();
			} catch (Exception e1) {
				// TODO: handle exception
				e1.printStackTrace();
			}
		}
		
		return ri;
	}
	
	public int confirmId(String id) {
		int ri = 0;
		
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "select id from members where id = ?";
		
		System.out.println("confirmId() : query[" + query + "]");
		
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				ri = B21_MemberDao.MEMBER_EXISTENT;
			} else {
				ri = B21_MemberDao.MEMBER_NONEXISTENT;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				if(connection != null) connection.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
			} catch (Exception e1) {
				// TODO: handle exception
				e1.printStackTrace();
			}
		}
		
		return ri;
	}
	
	public int userCheck(String id, String pw) {
		int ri = 0;
		String dbPw;
		
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "select pw from members where id = ?";
		
		System.out.println("userCheck() : query[" + query + "]");
		
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dbPw = rs.getString("pw");
				if (dbPw.equals(pw)) {
					ri = B21_MemberDao.MEMBER_LOGIN_SUCCESS;
				} else {
					ri = B21_MemberDao.MEMBER_LOGIN_PW_NO_GOOD;
				}
			} else {
				ri = B21_MemberDao.MEMBER_LOGIN_IS_NOT;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				if(connection != null) connection.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
			} catch (Exception e1) {
				// TODO: handle exception
				e1.printStackTrace();
			}
		}
		
		return ri;
	}
	
	public B21_MemberDto getMember(String id) {
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		B21_MemberDto dto = null;
		String query = "select * from members where id = ?";
		
		System.out.println("getMember() : query[" + query + "]");
		
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto = new B21_MemberDto();
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setName(rs.getString("name"));
				dto.seteMail(rs.getString("eMail"));
				dto.setAddress(rs.getString("address"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				if(connection != null) connection.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
			} catch (Exception e1) {
				// TODO: handle exception
				e1.printStackTrace();
			}
		}
		
		return dto;
	}

	private Connection getConnection() {
		// TODO Auto-generated method stub
		Context context = null;
		DataSource dataSource = null;
		Connection connection = null;
		
		try {
			context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/Oracle11g");
			connection = dataSource.getConnection();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return connection;
	}
}
