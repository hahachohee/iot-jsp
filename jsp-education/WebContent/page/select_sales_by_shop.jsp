<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<h3>SELECT</h3>
<table border=1>
<tr>
	<td>상점명</td>
	<td>총 판매액</td>
</tr>

<%
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection
		("jdbc:oracle:thin:@//122.128.169.32:1521/xe", "sdh_21", "1234");
		
		String query = "SELECT " +
			    "SHOP.SNAME, " +
			    "SUM(PIZZA.COST * SALELIST.AMOUNT) AS TOTAL_COST " +
			"FROM " +
			    "TBL_SALELIST_01   SALELIST, " +
			    "TBL_SHOP_01       SHOP, " +
			    "TBL_PIZZA_01      PIZZA " +
			"WHERE " +
			    "SALELIST.SCODE = SHOP.SCODE " +
			    "AND SALELIST.PCODE = PIZZA.PCODE " +
			"GROUP BY " +
			    "SHOP.SCODE, SHOP.SNAME " +
			"ORDER BY TOTAL_COST DESC ";
		
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(query);
		while (rs.next()) {
			%>
				<tr>
					<td><% out.println(rs.getString(1)); %></td>
					<td><% out.println(rs.getInt(2)); %></td>
				</tr>
			<%
		}
		stmt.close();
		conn.close();
	}
	catch (Exception e) {
		e.printStackTrace();
	}
%>
</table>