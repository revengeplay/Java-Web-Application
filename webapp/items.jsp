<%@page import="javaweb.Item"%>
<%@page import="java.util.List"%>
<%@page import="javaweb.ItemsViewModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	function selectCode(selectedCode) {
		document.getElementById("selectedCode").value = selectedCode
		document.itemSelect.submit();
	}
</script>
<style type="text/css">
table {
	width: 65%;
	border-collapse: collapse;
}

thead tr {
	background-color: #80cfcf;
}

td {
	border-bottom: 1px solid #242424;
	line-height: 1.00rem;
}

.currency {
	text-align: right;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<h2>ProductList</h2>
	<%
	//ItemsViewModel vm = (ItemsViewModel)request.getAttribute("itemList");
	//List<Item> items = vm.itemList();
	
	List<Item> items = (List)request.getAttribute("itemList");
	
	//ItemsViewModel vm = new ItemsViewModel();
	//List<Item> items = vm.itemList();
	%>
	<form method="post" action="itemDetail" name="itemSelect">
		<table>
			<col width="15%">
			<col width="45%">
			<col width="25%">
			<col width="15%">
			<thead>
				<tr>
					<td>Product Code</td>
					<td>Product Name</td>
					<td style="text-align: left;">price</td>
					<td></td>
				</tr>
			</thead>
			<tbody>
				<%
				for (Item item : items) {
				%>
				<tr>
					<td><%=item.getProductCd()%></td>
					<td><%=item.getProductNm()%></td>
					<td><%=item.getUnitPrice()%></td>
					<td><button type="button"
							onClick="selectCode('<%=item.getProductCd()%>')">button</button></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
		<input type="hidden" name="selectedCode" id="selectedCode">
	</form>
</body>
</html>