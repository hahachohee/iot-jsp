<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<table border="1">
<tr>
<%


int[] array = {1,2,3,11,12,13,21,22,23,31,32,33,41,42,43};
int count = 0;

	for(int number: array) {
		count += 1;
		%> <td><%= number %></td> <% 
				
		if(count % 3 == 0){
			%></tr><tr><%
		}
	}
%>
</tr>
</table>


</body>
</html>