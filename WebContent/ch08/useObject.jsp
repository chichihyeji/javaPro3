<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <jsp:useBean id="member" scope="request" class="ch08.member.MemberInfo" />
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>안녕하세요</title>
</head>
<body>

<%=member.getName() %>(<%=member.getId() %>)회원님 안녕하세요
</body>
</html>