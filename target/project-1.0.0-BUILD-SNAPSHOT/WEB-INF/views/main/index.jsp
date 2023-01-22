
<%--
  Created by IntelliJ IDEA.
  User: hohyun77
  Date: 2021-12-14
  Time: 오전 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<input type="button" id="ajaxBtn" value="AJAX버튼">
<input type="button" id="ajaxPythonBtn" value="AJAXPython버튼">
<p align="center">
    <img width="500" height="352" id="imgView"/>
</p>
</body>
</html>

<script>
    $(document).ready(function() {

        // 검색
        $("#ajaxBtn").on("click", function () {
            doAjax();
        });
        // 검색
        $("#ajaxPythonBtn").on("click", function () {
            doAjaxPython();
        });

    });

    const doAjax = function ajaxButton() {

        const url = "<c:url value='/main/test.do'/>";
        const jsonData = {index:12};
        const callBackFn = function (data){
            alert(data);
        }

        fnAjax(url,jsonData,callBackFn);
    }

    const doAjaxPython = function ajaxPythonButton() {

        const url = "<c:url value='/main/pythonTest.do'/>";
        const jsonData = {index:12};
        const callBackFn = function (data){
            //alert(data.index);
            $("#imgView").attr("src", data.src);
        }

        fnAjax(url,jsonData,callBackFn);
    }


</script>
