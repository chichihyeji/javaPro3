<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

request.setCharacterEncoding("EUC-KR");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>요청파라미터출력</title>
</head>
<body>

<b>request.getParameter() 메서드사용</b><br>
name 파라미터 =<%=request.getParameter("name")%> <br>
address 파라미터=<%=request.getParameter("address")%> <br>
바라는점 파라미터 =<%=request.getParameter("want") %>
url 파라미터=<%=request.getParameter("site")%>
<p>
<b>request.getParameterValues()메소드사용</b><br>

<%
String[] values=request.getParameterValues("name");
if(values!=null){
	
	for(int i=0;i<values.length;i++){
		
		
		%>
		<%=values[i] %>
		
		<% 
	}
}


%>
<p>
<b>request.getparameterName()메소드사용 </b><br>
<%

Enumeration paramEnum=request.getParameterNames();
while(paramEnum.hasMoreElements()){
	
	String name=(String)paramEnum.nextElement();
%>
<%=name %>
<%
}
%>

<p>
<b>request.getParameterMap()메서드 사용</b><br>
<%

Map parameterMap=request.getParameterMap();
String[] nameParam=(String[])parameterMap.get("name");
if(nameParam !=null){
	
	%>
name=<%=nameParam[0] %>

	<%
	
	
	
}
%>
</body>
</html>