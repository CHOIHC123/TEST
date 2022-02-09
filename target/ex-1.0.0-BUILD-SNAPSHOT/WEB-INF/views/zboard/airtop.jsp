<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="/ex/resources/css/post2.css"/>
    <script type="text/javascript" src="/ex/resources/js/tl.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript">
	    $(document).ready(function(){
	    	basket.reCalc();
	    	basket.updateUI();			
	    });
    </script>

</head>

<body>
    <div class="container"></div>
    <header class="header">
    <div class="wrap">
    <div class="header_login">
        <ul>
            <li><a href="#">회원가입●</a></li>
            <li><a href="#">로그인●</a></li>
            <li><a href="#">장바구니●</a></li>
            <li><a href="#">주문/배송●</a></li>
            <li><a href="#">고객센터●</a></li>
        </ul>
    </div>
    <div class="header_logoc">
	    <div class="header_logo">
	        <a href="#"></a>
	        <h1>airdays</h1>
	     </div>
    </div>
    <div class="header_util">
        <div class="header_gnb" class="header_search1">
            <ul>
                <li><a href="#">전체상품</a></li>
                <li><a href="#">신제품</a></li>
                <li><a href="#">베스트</a></li>
                <li><a href="#">기획전</a></li>
                <li><a href="#">KF-94</a></li>
                <li><a href="#">KF-94 슬림핏</a></li>
                <li><a href="#">프리스타일</a></li>
                <li><a href="#">비말차단</a></li>  

                <li><img src="/ex/resources/img/time.PNG" class="click_img"></li>
				<li>	
              		<input type="text" name="keyword" id="keywordInput" value="search" />
                    <button id="searchBtn" class="sear_btn">검색</button>
                </li>
            </ul>        
        </div>
    </div>
    </div>
    </header>
    <form name="orderform" id="orderform" method="post" class="orderform"  >
    
        <input type="hidden" name="cmd" value="order">
       
        <div class="basketdiv" id="basket">
            <div class="row head">
                <div class="subdiv">
                    <div class="check">선택</div>
                    <div class="img">이미지</div>
                    <div class="pname">상품명</div>
                </div>
                <div class="subdiv">
                    <div class="basketprice">가격</div>
                    <div class="num">수량</div>
                    <div class="sum">합계</div>
                </div>
                <div class="subdiv">

                    <div class="basketcmd">삭제</div>
                </div>
                <div class="split"></div>
            </div>
    	<c:forEach items="${list}" var="dto">
            <div class="row data">
                <div class="subdiv">
                    <div class="check"><input type="checkbox" name="buy" value="${dto.wishlistNum}" checked="checked" onclick="javascript:basket.checkItem();">&nbsp;</div>
                    <div class="img">
                    	<c:if test="${dto.productSize eq 'S'}">
						  	<img src="/ex/resources/img/theNew_L_B.PNG" width="120">
						</c:if>
						<c:if test="${dto.productSize eq 'M'}">
						  	<img src="/ex/resources/img/kf94_EX_W_slim.PNG" width="120">
						</c:if>
						<c:if test="${dto.productSize eq 'L'}">
						  	<img src="/ex/resources/img/freeC_M.PNG" width="120">
						</c:if>
                    </div>
                    <div class="pname">
                        <span>${dto.productName}</span>
                    </div>
                </div>
                <div class="subdiv">
                    <div class="basketprice"><input type="hidden" name="p_price" id="p_price${dto.wishlistNum}" class="p_price" value="${dto.productPrice}">${dto.productPrice}원</div>
                    <div class="num">
                        <div class="updown">
                            <input type="text" name="p_num${dto.wishlistNum}" id="p_num${dto.wishlistNum}" size="3" maxlength="4" class="p_num" value="${dto.productCnt}" onkeyup="javascript:basket.changePNum('${dto.wishlistNum}');">
                            <span onclick="javascript:basket.changePNum(1);"><i class="fas fa-arrow-alt-circle-up up"></i></span>
                            <span onclick="javascript:basket.changePNum(1);"><i class="fas fa-arrow-alt-circle-down down"></i></span>
                        </div>
                    </div>
                    <div class="sum">${dto.productPrice*dto.productCnt}원</div>
                </div>
                <div class="subdiv">
                    <div class="basketcmd"><a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delItem();">삭제</a></div>
                </div>
            </div>
       </c:forEach>
    
        </div>

        <div class="right-align basketrowcmd">
       		<a href="#" class="abutton" onclick="basket.delCheckedItem();">선택상품삭제</a>
            <form action ="headerair.jsp" method="post">
				 <input type="submit" value="장바구니비우기"/>
				 <%-- <a href="ex/deleteAll=${dto.name}">장바구니비우기</a> --%>
            </form>
        </div>
	
        <div class="bigtext right-align sumcount" id="sum_p_num">상품갯수: 4개</div>
        <div class="bigtext right-align box blue summoney" id="sum_p_price">합계금액: 100,000원</div>

        <div id="goorder" class="">
            <div class="clear"></div>
            <div class="buttongroup center-align cmd">
                <a href="javascript:void(0);">선택한 상품 주문</a>
            </div>
        </div>
    </form>
     <div class="resp_wrap">
      <div class="container2", class="resp">
             <div class="menu2">
                 <ul class="title">
                     <li><a href="#"><h4>INFORMATION</h4></a></li>
                      <li><a href="#">이용약관</a></li>
                      <li><a href="#">개인정보처리방침</a></li>
                      <li><a href="#">공지사항</a></li>
                      <li><a href="#">제휴안내</a></li>
                      <li><a href="#">사랑의 마스크 배송</a></li>
                  </ul>
              </div>
        </div>
   </div>
       <div class="footer_a">
           <div class="footer_b">
               <div class="footer_c" , class="footer_d">
                   <ul>
                       <li>
                       <a href="#"><img src="/ex/resources/img/footer.PNG"></a>
                       </li>
                   </ul>
               </div>
           </div>
       </div>
            
  
</body>
</html>