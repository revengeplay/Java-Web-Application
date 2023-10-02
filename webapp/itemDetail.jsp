<%@page import="javaweb.Item"%>
<%@page import="javaweb.ItemDetailViewModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	ItemDetailViewModel vm = (ItemDetailViewModel)request.getAttribute(ItemDetailViewModel.class.getSimpleName());
	Item item = vm.itemDetail();
	%>
	<img src="./img/<%= item.getProductImg() %>">
	<h2><%= item.getProductNm() %></h2>
	<b>price:<%= item.getUnitPrice() %>$</b>
	<div style="margin: 1.0rem 0;"><%= item.getDescription() %></div>
	<a href="/javaweb/items">Back</a>

</body>
</html>