<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>초기화파라미터읽어오기</title>
</head>
<body>


<ul>
<%

Enumeration<String> initParamEnum=application.getInitParameterNames();
while(initParamEnum.hasMoreElements()){
	String initParamName=initParamEnum.nextElement();
	
%>

<li><%=initParamName %>=

<%=application.getInitParameter(initParamName) %>
<%

}
%>


</ul>
</body>
</html>