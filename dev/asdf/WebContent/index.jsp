<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li><a href="index.jsp?section=A">A</a></li>
		<li><a href="index.jsp?section=B">B</a></li>
		<li><a href="index.jsp?section=C">C</a></li>
	</ul>
<%
	String section = request.getParameter("section") != null ? request.getParameter("section") : "";
	
	switch(section) {
	case "A":
		%><%@include file="pages/A.jsp" %><%
		break;
	case "B":
		%><%@include file="pages/B.jsp" %><%
		break;
	case "C":
		%><%@include file="pages/C.jsp" %><% 
		break;
	default:
		out.println("메인 페이지 입니다");
	}
%>

</body>
</html>