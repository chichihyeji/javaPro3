<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>������_76p</title>
</head>


<body>
<!-- view�ܿ��� �����ִ� ��� �Ķ���ʹ� ��Ʈ������ �޴´�. -->
<form action="/jsp/ch03/viewParameter.jsp" method="get">
�̸�: <input type="text" name="name" size="10" ><br> <%--input �±״� �� ���� �Է¿�Ҹ������Ѵ�. --%>

�ּ�: <input type="text" name="address" size="30"><br>
�����ϴ� ����: 
	<input type="checkbox" name="pet" value="dog"> ������
	<input type="checkbox" name="pet" value="cat"> �����
	<input type="text" name="pet" value="pig"> ����
	<br>
<input type="submit" value="����">
</form>

</body>
</html>