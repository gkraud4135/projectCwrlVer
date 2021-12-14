<%--
  Created by IntelliJ IDEA.
  User: hohyun77
  Date: 2021-12-14
  Time: 오전 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/admin.css?version=1.91'/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/loading.css'/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/js/jquery-ui-1.11.4.custom/jquery-ui.min.css' />" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/js/jquery-ui-1.11.4.custom/jquery-ui.structure.min.css'/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/js/jquery-ui-1.11.4.custom/jquery-ui.theme.min.css'/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/timepicki.css'/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/js/amcharts/style.css'/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/js/amcharts/plugins/export/export.css' />" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/tooltip/tipped.css'/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/viewer.css'/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/js/notify/notify.css'/>" />

    <script type="text/javascript" src="<c:url value='/js/promise/es6-promise.auto.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/js/promise/es6-promise.min.js'/>"></script>

    <script type="text/javascript" src="<c:url value='/js/jquery-ui-1.11.4.custom/external/jquery/jquery.js'/>"> </script>
    <script type="text/javascript" src="<c:url value='/js/jquery-ui-1.11.4.custom/jquery-ui.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/js/timepicki.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/js/datepick.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/js/monthpicker.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/js/tooltip/tipped.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/js/jquery.floatThead.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/js/JControl.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/js/classie.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/js/jquery.multifile.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/js/viewer.js'/>"></script>
    <title><tiles:insertAttribute name="title"/></title>
</head>
<body>
    layout_template
    <div id="content">
    <div class="subContentArea">
    <tiles:insertAttribute name="header"/>
    <tiles:insertAttribute name="contents"/>
    <tiles:insertAttribute name="footer"/>
    </div>
    </div>
</body>
</html>
