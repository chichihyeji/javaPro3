<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%

String code=request.getParameter("code");
String viewPageURI=null;

if(code.equals("A")){
	viewPageURI="/ch07/a.jsp";
	
}else if(code.equals("B")){
	viewPageURI="/ch07/b.jsp";
	
}else if(code.equals("C")){
	viewPageURI="/ch07/c.jsp";
	
}

%>
<jsp:forward page="<%=viewPageURI %>"/>