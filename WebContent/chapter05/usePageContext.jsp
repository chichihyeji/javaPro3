<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>pageContext 奄沙梓端</title>
</head>
<body>
<%
HttpServletRequest httpRequest=(HttpServletRequest)pageContext.getRequest();%>
request 奄沙梓端人 pageContext.getRequest()税 疑析食採;
<%

<%=request.getParameter("name") %><br>
httpRequest:<%=httpRequest.getParameter("name") %>
<br>
pageContext.getOut():五辞球研 紫遂廃汽戚斗窒径


<% PageContext.getOut().println("ぞしぞしぞし"); %>
</body>
</html>