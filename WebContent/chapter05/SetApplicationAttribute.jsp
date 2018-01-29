<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String name=request.getParameter("name");
String value=request.getParameter("value");

if(name!=null && value!=null){
	application.setAttribute(name, value);
	
	
}
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>application 속성지정</title>
</head>
<body><%
if(name!=null & value!=null){
	
%>
application 기본객체의 속성 설정:
<%= name %>=<%=value %>
<%

}else{
	
	%>
application 기본객체의속성 설정안합
<% }




%>

</body>
</html>