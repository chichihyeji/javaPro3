<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head>

<title>옵션선택화면</title>
</head>
<body>


<form action="<%=request.getContextPath()%>/ch07/view2.jsp">

보고싶은 페이지 선택:
<select name="code">

<option value="A">a페이지</option>
<option value="B">b페이지</option>
<option value="C">c페이지</option>
</select>

<input type="submit" value="이동">


</form>

</body>
</html>