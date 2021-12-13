<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <title>Title</title>
</head>
<body>
ㄴㅇㄴㅇㄴ
<input type="button" id="btn1" value="버튼">

</body>
</html>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>

$(document).ready(function() {

    // 검색
    $("#btn1").on("click", function () {
        ajaxButton();
    });


});

function ajaxButton() {
alert("1");
}


</script>