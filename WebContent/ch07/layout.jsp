<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>layout</title>
</head>
<body>


<table width="400" border="1" cellpadding="0" cellspacing="0"></table>
<tr>


<td colspan="2">
<jsp:include page="/ch07/top.jsp" flush="false"/>
</td>
</tr>
<tr>
<td width="100" valign="top">
	<jsp:include page="/ch07/left.jsp" flush="false" />
</td>

<td width="300" valign="top">
<!--  내용부분:시작 -->
레이아웃1
<br><br><br>
<!-- 내용부분 끝 -->
</td>
</tr>
</body>
</html>