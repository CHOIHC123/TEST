<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Page Title</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
*{
    margin: 0px;
    padding: 0px;
    list-style: none;
    text-decoration: none;
    color:black;
}
body, th, td, input, select, textarea, button, pre {
    font-size: 13px;
    line-height: 1.4;
    font-weight: 400;
    color: #24282d;
    font-family: 'Roboto', 'Notokr Local','Noto Sans KR','Malgun Gothic',sans-serif;
}
input[type=text], input[type=password], input[type=email], input[type=tel], input[type=number] {
    box-sizing: border-box;
    padding: 0 9px;
    width: 180px;
    height: 32px;
    font-size: 13px;
    line-height: 32px;
    color: #333;
    border: 1px #ccc solid;
    border-radius: 2px;
}
.container{
    max-height: 100000px;
}
.util_wrap{
    height: 70px;
    text-align: right;
    box-sizing: border-box;
    border-bottom: 1px solid rgb(214, 214, 214);
}
.layout_body, .header_gnb,.header_login{
    max-width: 1280px;
    margin: 0 auto;
    padding-left:40px;
    padding-right: 40px;
}
.header_login ul{
    float: right;
    margin-top: 20px;
    margin-right: 20px;
    
}
.header_login ul li{
  display:inline-block;
    
}
.header_login ul li a {
    display: block;
    font: bold 14px 'arial';
    color:#999;
    margin: 0px 5px;
    letter-spacing: 1px;
}
.header
 {
    height: 200px;
    text-align: center;
    box-sizing : border-box;
    border-bottom: 1px solid rgb(214, 214, 214);
}
.header_logoc{
    font: bold 40px 'arial';
    padding-top: 15px;
    letter-spacing: 2px;
    margin-top: -1px;
}
.header_logo{
    max-width: 1280px;
    margin: 0 auto;
    padding-left:40px;
    padding-right: 40px;
}
.header_logo h1{
    font: bold 40px 'arial';
    padding-top: 23px;
    letter-spacing:2px;
}
.header_util{
    height: 100px;
    border-bottom: 1px solid rgb(214, 214, 214);
}

.header_gnb ul{
    float:left;
    margin-top:63px;
}
.header_gnb ul li {
    display: inline-block;
}
.header_gnb ul li a {
    display: block;
    font: bold 14px 'arial';
    color:#999;
    margin: 0px 10px;
    letter-spacing: 1px;
}
</style>

</head>
<body>
<body>
    <div class="container">
    <header class="header">
    <div class="util_wrap">
        <div class="header_login">
        <ul>
            <li><a href="#">회원가입 ●</a></li>
            <li><a href="#">로그인 ●</a></li>
            <li><a href="#">장바구니 ●</a></li>
            <li><a href="#">주문/배송 ●</a></li>
            <li><a href="#">고객센터</a></li>
        </ul>
    </div>
    </div>
    <div class="header_logoc">    
    <div class="header_logo">
        <a href="#">
            <h1>airDays</h1>
        </a>
        </div>
    </div>
    <div class="header_util">
        <div class="header_gnb">
            <ul>
                <li><a href="#">전체상품</a></li>
                <li><a href="#">신제품</a></li>
                <li><a href="#">베스트</a></li>
                <li><a href="#">기획전</a></li>
                <li><a href="#">KF-94</a></li>
                <li><a href="#">KF-94 슬림핏</a></li>
                <li><a href="#">프리스타일</a></li>
                <li><a href="#">비말차단</a></li>
            </ul>
        </div>
    </div>
    </header>
</div>
<br> 
</body>
</html>