<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head>

<title>�ɼǼ���ȭ��</title>
</head>
<body>


<form action="<%=request.getContextPath()%>/ch07/view2.jsp">

������� ������ ����:
<select name="code">

<option value="A">a������</option>
<option value="B">b������</option>
<option value="C">c������</option>
</select>

<input type="submit" value="�̵�">


</form>

</body>
</html>