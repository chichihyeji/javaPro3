<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����������</title>
</head>
<body>



�̸�: <input type="text" name="name" size="10" value='<%=request.getParameter("name")%>'><br> <%--input �±״� �� ���� �Է¿�Ҹ������Ѵ�. --%>

����: <input type="text" name="title" size="30" value='<%=request.getParameter("title")%>'><br>

����: <textarea name="�����Է��ϱ�" rows="20" cols="20" value='<%=request.getParameter("�����Է��ϱ�")%>'></textarea>

��й�ȣ  <input type="text" name="password" size="30" <%=request.getParameter("password")%>'><br>
<input type="submit" value="����">
</form>

</body>
</html>