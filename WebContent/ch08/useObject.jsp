<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <jsp:useBean id="member" scope="request" class="ch08.member.MemberInfo" />
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�ȳ��ϼ���</title>
</head>
<body>

<%=member.getName() %>(<%=member.getId() %>)ȸ���� �ȳ��ϼ���
</body>
</html>