<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%



request.setCharacterEncoding("utf-8");

String memberID=request.getParameter("memberID");
String password=request.getParameter("password");
String name=request.getParameter("name");
String email=request.getParameter("email");

Class.forName("oracle.jdbc.driver.OracleDriver");

Connection conn=null;
PreparedStatement pstmt=null;

try{
	
	String jdbcDriver="jdbc:oracle:thin:@localhost:1521:orcl";
	String dbUser="scott";
	String dbPass="tiger";


	//2.�����ͺ��̽� Ŀ�ؼ� ����
	conn=DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
	pstmt=conn.prepareStatement("insert into MEMBER values(?,?,?,?)");
	pstmt.setString(1, memberID);
	pstmt.setString(2, password);
	pstmt.setString(3,name);
	pstmt.setString(4, email);
	
	pstmt.executeUpdate();
	}finally{
		if(pstmt!=null)try{pstmt.close();} catch(SQLException ex){}

		if(conn!=null)try{conn.close();} catch(SQLException ex){}
	}
	
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����</title>
</head>





<body>
������̺��� ���ο� ���ڵ� ���� 
</body>
</html>