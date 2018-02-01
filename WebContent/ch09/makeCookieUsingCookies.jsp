<%@page import="util.Cookies"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%

response.addCookie(Cookies.createCookie("name","최범균"));

response.addCookie(Cookies.createCookie("id","madvirus","/jsp/ch09",-1));
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>쿠키사용예</title>
</head>
<body>
cookie를 사용하여 쿠키생성
</body>
</html>