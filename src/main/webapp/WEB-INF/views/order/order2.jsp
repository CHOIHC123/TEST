<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<header>
		<%@include file="/WEB-INF/views/include/header.jsp"%> 
</header>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
	<style>
      #successMessage{
     	margin: auto;
     	width: 1200px;
     	height: 60px;
      	position:relative;
      	top:50px;
      	/* background: gray;  */
      	padding-top:40px;
      	text-align: center;
      	font-size:16px;
      	border-top:2px solid #E9E9E9;
      	border-bottom:2px solid #E9E9E9; 
      }
      #orderList{
      	background:#f8fafd; 
      	border:1px solid #E9E9E9;
      	border-bottom:5px dotted #E9E9E9;
      	position:relative;
      	top:70px;
      	width: 600px;
     	/* height: 500px; */
     	margin: auto;
      }
      #orderListTable{
      	width: 500px;
      	margin:auto;
      	border-collapse:collapse;
      }
      #orderListTable td{
      	border-bottom:2px solid #E9E9E9; 
      	margin:15px;
      	height: 40px;
      }
      tr:nth-child(3),:nth-child(5),:nth-child(6),:nth-child(8){
      	border-top:hidden;
      }
      #orderListTable tr{
      	/* border-bottom:2px solid #E9E9E9; */
      }
      
      #contetsTitle1{
      	text-align: center;
      	font-size:17px;
      	padding:30px 0px;
      	color:#777777;
      	font-weight:bolder;
      }
      .hiddenborder{
      	border-bottom:none;
      }
      #contetsTitle2{
      	/* font-size:17px; */
      	/* font-weight:bolder; */
      }
      /* #contetsTitle3{
      	color:red;
      	font-weight:bolder;
      } */
      .textcolor{
      	color:#777777;
      }
      button{
          position: relative;
          left: 130px;
          top: 60px; 
          height: 35px;
          width: 150px;
      }
      #mypageBtn{
          background: rgb(90, 86, 86);
          border-radius: 3px;
          color: aliceblue;
          width: 200px;
      }
      #mypageBtn:hover{
      	background: rgb(121, 116, 116);;
      }
      iframe{
      	visibility:hidden;
      }
      .textRight{
      	text-align: right;
      }
      
    </style>
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<!-- 	<script>
	function sendData(){
		 document.myHiddenForm.submit();
	 	}
    </script> -->
	
</head>
<body Onload="sendData()">

<br>
 <c:forEach items="${list }" var="dto"> 
<%--  	<form action="/ex/order/order2" method="post" name="myHiddenForm" target="iframe1">
		<input type="hidden" name="state" value="결제완료">
		<input type="hidden" name="orderNum" value="${dto.orderNum}">
		<input type="hidden" name="userID" value="${dto.userID}">
		<input type="hidden" name="address" value="${dto.address}">
		<input type="hidden" name="payPrice" value="${dto.payPrice}">
		<input type="hidden" name="productNum" value="${dto.productNum}">
		<!-- <input type="submit" value="send"> -->
	</form> --%> 
<div id="successMessage">
<p>${dto.userID }&nbsp;님의 주문이 완료되었습니다.</p>
</div>
<div id="orderList">
	<table id="orderListTable">
		<tr>
			<td colspan="2" id="contetsTitle1">주문내역</td>
		</tr>
		<tr>
			<td colspan="2" class="textcolor">상품명</td>
		</tr>
		<tr>
			<td>${dto.productName }</td>
			<td class="textRight">${dto.productCnt }&nbsp;개</td>
		</tr>
		<tr>
			<td class="textcolor">결제 날짜</td>
			<td class="textRight"><fmt:formatDate value="${dto.orderDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		</tr>
		<tr>
			<td class="textcolor">결제 수단</td>
			<td class="textRight">${dto.payMeans }</td> 
		</tr>
		<tr>
			<td class="textcolor">결제 금액</td>
			<td id="contetsTitle3" class="textRight"><fmt:formatNumber value="${dto.payPrice }" pattern="#,###,###" />&nbsp;원</td>
		</tr>
		<tr>
			<td colspan="2" class="textcolor">배송지</td>
		</tr>
		<tr>
			<td colspan="2">
				${dto.addressee }<br>
				${dto.address }<br>
				${dto.tel }<br>
			</td>
		</tr>
	</table>
	<button onclick="location.href='/ex/order/order3'" id="mypageBtn">MY페이지 주문내역</button>
    <button onclick="location.href='/ex/'">쇼핑계속하기</button>
</div>
<</c:forEach> 
    <br>
	<footer>
		<%-- <%@ include file="./footer.jsp"%> --%>
	</footer>	

</body>
<!-- <iframe name="iframe1"></iframe> -->
</html>

