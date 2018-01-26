<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>이혜지과제</title>
</head>
<body>



이름: <input type="text" name="name" size="10" value='<%=request.getParameter("name")%>'><br> <%--input 태그는 각 폼의 입력요소를생산한다. --%>

제목: <input type="text" name="title" size="30" value='<%=request.getParameter("title")%>'><br>

내용: <textarea name="내용입력하기" rows="20" cols="20" value='<%=request.getParameter("내용입력하기")%>'></textarea>

비밀번호  <input type="text" name="password" size="30" <%=request.getParameter("password")%>'><br>
<input type="submit" value="전송">
</form>

</body>
</html>