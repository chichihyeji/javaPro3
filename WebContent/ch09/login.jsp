<%@page import="util.Cookies"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="util.Cookies" %>
<%
String id=request.getParameter("id");
String password=request.getParameter("password");

if(id.equals(password)){
	
	//id�� ��ȣ�� ������ �α��ο� ������ ������ �Ǵ�.
	response.addCookie(
			Cookies.createCookie("AUTH",id,"/",-1)
			);


%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α��μ���</title>
</head>
<body>

</body>
</html>
<%
}else {
	%>

%>
<script>
alert("�α��ν���");
history.go(-1);
</script>
<% }%>


