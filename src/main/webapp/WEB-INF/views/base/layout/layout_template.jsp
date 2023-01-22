
        <%--
          Created by IntelliJ IDEA.
          User: hohyun77
          Date: 2021-12-14
          Time: 오전 11:21
          To change this template use File | Settings | File Templates.
        --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/tiles.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/tipped.css" />
    <link rel="shortcut icon" href="/resources/img/favicon.ico" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
    <script type="text/javascript" src="/resources/js/common.js"></script>

<title><tiles:insertAttribute name="title"/></title>
</head>
<body>


<header id="header">
    <tiles:insertAttribute name="header"/>
</header>
<section id="siteContent">
    <tiles:insertAttribute name="contents"/>
</section>

<%--
<footer id="footer">
    <tiles:insertAttribute name="footer"/>
</footer>
--%>


</body>
</html>
