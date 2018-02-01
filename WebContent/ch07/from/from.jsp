<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- 
<jsp:forward>액션 태그를 실행하면 생성했던 출력결과는 모두 사라진다.


 -->
<html>
<head>
<title>from.jsp 제목</title>
</head>
<body>
이페이지는 from.jsp가 생성한 것

<jsp:forward page="/jsp/to/to.jsp"></jsp:forward>
</body>
</html>