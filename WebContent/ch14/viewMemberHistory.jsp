<%@page import="java.io.Reader"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%

String memberID=request.getParameter("memberID");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원정보</title>
</head>
<body>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");

Connection conn=null;
Statement stmt=null;
ResultSet rs=null;



try{
	
	String jdbcDriver="jdbc:oracle:thin:@localhost:1521:orcl";
	String dbUser="scott";
	String dbPass="tiger";
	String query="select*from MEMBER_HISTORY"+"where MEMBERID="+memberID;
	
	//2.데이터베이스 커넥션 생성
	conn=DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
	
	//3. Statement 생성
	stmt=conn.createStatement();
	
	//4.쿼리실행
	rs=stmt.executeQuery(query);
	if(rs.next()){
		%>
		<table border="1">
		<tr>
		<td>아이디</td><td><%=memberID %></td>
		</tr>
		<tr>
		<td>히스토리</td>
		<td>
		<%
		
		
		String history=null;
		Reader reader=null;
		
		try{
			
			reader=rs.getCharacterStream("HISTORY");
			
			if(reader!=null){
				
				StringBuilder buff=new StringBuilder();
				char[] ch=new char[512];
				int len=-1;
				
				while((len=reader.read(ch))!=-1){
					buff.append(ch,0,len);
				}
				history=buff.toString();
			}
		}catch(IOException ex){
			out.println("익셉션발생"+ex.getMessage());
		}finally{
			if(reader!=null)try{reader.close();}
			catch(IOException ex){}
			
		}
		
		
		%>
		
		<%=history %>
		</td>
		</tr>
		</table>
		<%
		
	}else{
		
		%>
		<%=memberID %>회원히스토리없음
	<%
	}
}catch(SQLException ex){
	%>
	
	에러발생:<%=ex.getMessage() %>

<%
}finally {
	
	
	if(rs!=null)try{rs.close();} catch(SQLException ex){}
	if(stmt!=null)try{stmt.close();} catch(SQLException ex){}
	if(conn!=null)try{stmt.close();} catch(SQLException ex){}
}
%>


</body>
</html>