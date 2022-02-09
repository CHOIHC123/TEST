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
     #cancleBtn{
     	padding:2px;
     	float:right;
		background: gray;
		color:#fff; 
		border:none;
		border-radius:3px;
		box-shadow: 0 4px 12px rgba(17, 17, 17, 0.3);
     }
     #cancleBtn:focus{
     	outline:0;
     }
     #cancleBtn:hover{
     	background:rgba(17, 17, 17,0.9);
     	cursor:pointer;
     	box-shadow: 0 2px 4px rgba(17, 17, 17,0.6);
     }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
var result = '${msg}';

if (result == 'success') {
	alert("주문이 취소되었습니다.");
}

</script>
</head>
<body>

<br>
<div>
	<table id="myPageOrder">
		<tr>
			<th>날짜</th>
			<th>주문번호</th>
			<th>주문상품</th>
			<th>상태</th>
			<th>결제금액</th>
		</tr>
		<c:forEach items="${list }" var="dto">
		<tr>
			<td><fmt:formatDate value="${dto.orderDate}" pattern="yyyy-MM-dd"/></td>
			<%-- <td>${dto.orderNum }</td> --%>
			<td><a href="/ex/update?orderNum=${dto.orderNum }">${dto.orderNum }</a></td> 
			<td>${dto.productName }</td> 
			<td>${dto.state }</td>
			<td><fmt:formatNumber value="${dto.payPrice }" pattern="#,###,###" />
				<c:if test="${dto.state=='결제완료' }">
				<button onclick="location.href='/ex/order/delete?orderNum=${dto.orderNum}'" id="cancleBtn" >주문취소</button>
				</c:if>
			</td>	
		</tr>
		</c:forEach>
		
	</table>
	
</div>
	<footer>
		<%-- <%@ include file="./include/footer.jsp"%> --%>
	</footer>	
</body>
</html>