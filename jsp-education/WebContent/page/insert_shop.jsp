<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h3>INSERT_SHOP</h3>

<script>
function reset_form() {
	document.input_form.reset();
}
function submit_form() {
	alert(document.input_form.scode.value);
}
</script>
<form action="action/insert_shop_data.jsp" method="post" name="input_form">
	<table border="1">
		<tr>
			<td>매장 코드</td>
			<td><input type="text" name="shop_code"/></td>
		</tr>
		<tr>
			<td>매장 이름</td>
			<td><input type="text" name="shop_name"/></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" value="등록하기" onClick="submit_form()">
				<input type="button" value="다시하기" onclick="reset_form()">
			</td>
		</tr>
	</table>
</form>