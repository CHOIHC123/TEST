<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="jquery-3.3.1.js"></script>
<style>
#orderContent{
     	position: relative;
        top: 17px; 
        width: 100%;
  		padding-right: 15px;
  		padding-left: 15px;
 		margin-right: auto;
  		margin-left: auto;
        /* background: skyblue; */
    }
     @media (min-width: 1200px)
	{
	  #orderContent{
	    max-width: 1140px;
	  }
	}
     h2{
     	text-align: center;
     	margin:30px;
     }
     #order_info{
        display: flex;
        flex-direction: row;
        flex:4;
     }
     #orderProductInfo{
       width: 700px;
       margin-bottom: 10px;
  	 }
  	 #orderProductInfo>table{
  	  	padding:10px; 
        display: block;
  	 }
    
  	 #orderProductInfoTable td{
  	  	border-bottom:1px solid #ececec;
  	  	background: #fafafa;
  	 }

 	 #padding10{
 	  	padding:10px;
 	 }
 	 #padding30{
 	   	padding-left:30px; 
 	 }
     #btn{
     	float:right;
     	margin-right:5px;
     }
     .productImage{
     	padding:5px;
     }
     #orderProduct{
     	padding-left:150px;
     }
     .font_bold{
     	font-weight:bold;
     	font-size:14px;
     }
     #recipientInfo{
 		display: block;
        margin: 15px;
     }

    #payment{
        flex:1;
        height: 450px;
        margin-top:10px;
        margin-left: 50px;
        padding-left:10px;
        padding-top:10px;
        border: 1.5px solid #E9E9E9;
        border-collapse:collapse;
     }
     #payment>table{
     	margin:30px;
     }
     #payment td{
     	height:50px;
     	border-bottom:3px dotted #E9E9E9;
     }
     .paymentTd2{
     	text-align: right;
     	margin-right:10px
     }
     #paymentTitle{
     	text-align: center;
     	margin:15px;
     }
     #pay{
        margin-left:30px;

     }
     table{
        border-collapse: collapse;
     }  
     input{
        height: 30px;
        margin-bottom: 3px;
        margin-left:10px;
     }
     .adressBox{
        width: 400px;
     }
     select{
        height: 30px;
        font-size: 15px;
     }
     #payBtn{
        width: 300px;
        height: 35px;
        /* border: hidden; */
        border: none;
        background-color: rgb(75, 74, 74);
        color: aliceblue;
        font-weight: bold;
        font-size: 16px;
        border-radius: 10px;
        margin-bottom:20px;
        margin-left: 30px;
     }
     #payBtn:hover{
        background: black;
        cursor:pointer;
     }
     #equalsBtn{
        /* height: 35px; */
        margin-left: 20px;
        /* border: hidden; */
        font-size: 15px;
     } 
     
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
	
    $(document).ready(function(){
        $(".reciveUserInfo").click(function(){
				alert("????????? ???????????????.");
	        });

     });
/*     var payMeans=$("#payMeansInfo option:selected").val();
	
	$("#stateInfo").change(function() {
    	if(payMeans=="???????????????"){
    		$("input[type=hidden][name=state]").val("???????????????");
    	}			
	});  */   	
    	
   
</script>

<title>select</title>
</head>
<body>
<header>
		<%@include file="/WEB-INF/views/include/header.jsp"%> 
</header>
	<br>
	
	<div id="orderContent">
		<h2>??????/??????</h2>
	        <form action="/ex/order/order" method="post">
		<div id="order_info">
			<div id="orderProductInfo">
				<table id="orderProductInfoTable">
					<tr >
        				<td colspan="2" style="width: 700px;" id="padding10">??????: ??????(??????) 2,500???
        				<button type="button" id="btn" class="reciveUserInfo">?????? ??????</button></td>
        			</tr>
						<c:forEach items="${list }" var="orderdto">
						<c:set var="sum" value="${orderdto.productPrice * orderdto.productCnt}"></c:set>
						<c:set var="sum2" value="${sum2 + sum}"></c:set>
						<c:set var="sum3" value="${sum2+2500 }"></c:set>
					<tr>
						<td class="productImage" style="width: 100px;" id="padding30">
	        				<img src="/ex/resources/img/${orderdto.productImage}"  style="width: 90px; height:90px;">
	        			</td>
						<td id="orderProduct">
							<p class="font_bold">${orderdto.productName }</p><input type="hidden" name="productName" value="${orderdto.productName }"><br>
							<br>
							Price-<fmt:formatNumber value="${orderdto.productPrice}" pattern="#,###,###" />
							x ${orderdto.productCnt}<input type="hidden" name="productCnt" value="${orderdto.productCnt }"><br>
							<fmt:formatNumber value="${sum}" type="currency" />
						</td>
					</tr>
					<input type="hidden" name="userID" value="${orderdto.userID}"><br>
					<c:set var="username" value="${orderdto.userName }"></c:set>
					<c:set var="address" value="${orderdto.address }"></c:set>
					<c:set var="tel" value="${orderdto.tel }"></c:set>
					</c:forEach>

				</table>
                <div id="recipientInfo">
                	
                    <table>
                        <%-- <tr>
                            <td>?????? ??????</td>
                            <td><input type="text" name="username" value="${orderdto.userName }"><input type="button" value="???????????? ??????" id="reciveUserInfo"></td>
                        </tr>
                        <tr>
                            <td>?????? </td>
                            <td><input type="text" name="address" value="${orderdto.address }" class="adressBox" style="width:500px;"></td>
                        </tr>
                        <tr>
                            <td>????????????</td>
                            <td><input type="text" name="tel" value="${orderdto.tel }" class="adressBox" style="width:500px;"></td>
                        </tr> --%>
                        <tr>
                            <td>?????? ??????</td>
                            <td><input type="text" name="addressee" value="${username }"><input type="button" value="???????????? ??????" id="reciveUserInfo"></td>
                        </tr>
                        <tr>
                            <td>?????? </td>
                            <td><input type="text" name="address" value="${address }" class="adressBox" style="width:500px;"></td>
                        </tr>
                        <tr>
                            <td>????????????</td>
                            <td><input type="text" name="tel" value="${tel }" class="adressBox" style="width:500px;"></td>
                        </tr>
                    </table>
                </div>
            
			</div>
		<br>
		
		<br>
            

        <div id="payment">
            <h3 id="paymentTitle">????????????</h3>
                <table>
                    <tr>
                        <td style="width: 90px;">????????????</td>
                        <td class="paymentTd2" style="width: 200px;">&nbsp;<fmt:formatNumber value="${sum2}" type="currency" /></td>
                    </tr>
                    <tr>
                        <td>?????????</td>
                        <td class="paymentTd2" style="width: 200px;">&nbsp;\2,500</td>
                    </tr>
                    <tr>
                        <td>????????????</td>
                        <td class="paymentTd2" style="width: 200px;">&nbsp;<fmt:formatNumber value="${sum3}" type="currency" /><input type="hidden" name="payPrice" value="${sum3}"></td>
                    </tr>
                </table>
                <br>
                
                <div id="pay">
                   	 ?????? ??????
                    <select name="payMeans" id="payMeansInfo">
                        <option value="????????????">????????????</option>
                        <option value="???????????????">???????????????</option>
                        <option value="???????????????">???????????????</option>
                    </select>
                </div>
                

                <br> <br>
                
                <input type="hidden" name="state" value="????????????" id="stateInfo">
                <input type="submit" value="????????????" id="payBtn">
        </div>
	</div>
	
	</form>

	<footer>
		<%-- <%@ include file="/footer.jsp"%> --%>
	</footer>	
</body>
</html>