<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="/ex/resources/css/post.css"/>
   
</head>
<body>
    <div class="container">
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
        <a hred="#">
        <h1>airdays</h1>
        </div>
    </div>
    <div class="header_util">
        <div class="header_gnb", class="header_search1">
            <ul>
                <li><a href="#">전체상품</a></li>
                <li><a href="#">신제품</a></li>
                <li><a href="#">베스트</a></li>
                <li><a href="#">기획전</a></li>
                <li><a href="#">KF-94</a></li>
                <li><a href="#">KF-94 슬림핏</a></li>
                <li><a href="#">프리스타일</a></li>
                <li><a href="#">비말차단</a></li>  

                <li><img src="resources/img/time.PNG" class="click_img"></li>

                <input type="text" name="keyword"
                    id="keywordInput" value="search">
                    <button class="sear_btn" id="searchBtn">검색</button>
            </ul>        
        </div>
    </div>
    </header>
    <div class="middle">
        <h2>장바구니</h2>
    </div>
        <div class="bklogo">
            <c:if test="${cartList eq null or empty cartList}">
			<tr>
				<td colspan="6"><b>담긴 상품이 없습니다.</b></td>
			</tr>
				</c:if>
            
            <table class="bklogot">
                <tr>
                    <th><img src="resources/img/basket.PNG"></th>
                </tr>
                <tr>
                    <th>장바구니에 담긴 상품이 없습니다.</th>
                </tr>
            </table>
     
            
            <!--담긴상품-->
        </div>
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
                            <a href="#"><img src="resources/img/footer.PNG"></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
</body>
</html>