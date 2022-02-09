<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page session="false" %>
<header>
<%@include file="/WEB-INF/views/include/header.jsp"%> 
</header>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문조회</title>
<style>
     #myPageOrder{
     	margin: auto;
     	position: relative;
     	top:80px; 
     	width: 1000px;
     	border-collapse:collapse;
     }
     #myPageOrder td,th{
     	height: 50px; 
     	border-bottom:2px solid #E9E9E9;
     	text-align: center;
     }
     .cancleBtn{
     	padding:2px;
     	float:right;
		background: gray;
		color:#fff; 
		border:none;
		border-radius:3px;
		box-shadow: 0 4px 12px rgba(17, 17, 17, 0.3);
     }
     .cancleBtn:focus{
     	outline:0;
     }
     .cancleBtn:hover{
     	background:rgba(17, 17, 17,0.9);
     	cursor:pointer;
     	box-shadow: 0 2px 4px rgba(17, 17, 17,0.6);
     }
</style>

</head>
<body>

<br>
<div>
	<table id="myPageOrder">
		<tr>
			<th>날짜</th>
			<th>주문번호</th>
			<th>주문상품</th>
			<th>결제금액</th>
			<th>상태</th>
		</tr>
		
		<c:forEach items="${list }" var="dto">
		<tr>
			<td><fmt:formatDate value="${dto.orderDate}" pattern="yyyy-MM-dd"/></td>
			<td>${dto.orderNum }</td> 
			<td>${dto.productName }</td>
			<td><fmt:formatNumber value="${dto.payPrice }" pattern="#,###,###" /></td> 
			<td>
			<form action="/ex/admin/orderState" method="post">
			    <select name="state">
		    	   <option value="결제완료">결제완료</option>
                   <option value="상품준비중">상품준비중</option>
                   <option value="상품 출고">상품출고</option>
                   <option value="배송중">배송중</option>
                   <option value="베송완료">배송완료</option>
                </select>
                <input type="hidden" name="orderNum" value="${dto.orderNum }">
                <input type="submit" value="변경">
			</td>
				
		</tr>
		</form>
		</c:forEach>
		
	</table>
	
</div>
	<footer>
		<%-- <%@ include file="./include/footer.jsp"%> --%>
	</footer>	
</body>
</html>