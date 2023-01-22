<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Thing
  Date: 2021-12-13
  Time: 오후 8:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script type="text/javascript" src="/resources/js/tipped.js"></script>
    <script type="text/javascript" src="/resources/js/common.js"></script>
    <link rel="stylesheet" type="text/css" href="/resources/css/tipped.css" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="robots" content="noindex,nofollow" />







    <title>Title</title>
</head>
<body>
ㄴㅇㄴㅇㄴ
<input type="button" id="ajaxBtn" value="AJAX버튼">
<a href="/main/tilesTest.do">Tiles버튼</a>


<div id="page">
    <div class="demonstrations">
        <div class="box" id="demo-size-small">small</div>
        <div class="box" id="demo-size-medium">medium</div>
        <div class="box" id="demo-size-large">large</div>

        <div class="box" id="demo-size-x-small">x-small</div>
        <div class="box" id="demo-size-medium-close">medium ×</div>
        <div class="box" id="demo-size-large-title">large</div>
    </div>
</div>

</body>
</html>




<script>

$(document).ready(function() {

    Tipped.create("#demo-size-small", "Small", { size: "small" });
    Tipped.create("#demo-size-medium", "Medium", { size: "medium" });
    Tipped.create("#demo-size-large", "Large", { size: "large" });
    // 검색
    $("#ajaxBtn").on("click", function () {
        doAjax();
    });



});

const doAjax = function ajaxButton() {

    const url = "<c:url value='/main/test.do'/>";
    const jsonData = null;
    const callBackFn = function (){
        alert("SUCCEESS");
    }

    fnAjax(url,jsonData,callBackFn);
}

</script>