<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>파라미터출력</title>
</head>
<body>


<%--

back단은 %안에있는거 view는 %밖 출력

 --%>
name 파라미터값: 


<%=request1.getParameter("name").toUpperCase() %>
</body>
</html>