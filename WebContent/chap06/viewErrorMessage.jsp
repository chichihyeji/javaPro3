<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>error 발생</title>
</head>
<body>

요청처리 과정에서 에러가 발생하였습니다.<br>
빠른시간내에 문제를 해결하겠습니다
<p>
에러타입:<%=exception.getClass().getName() %><br>
에러메시지:<b><%= exception.getMessage() %></b>
</body>
</html>