<%--
  Created by IntelliJ IDEA.
  User: Thing
  Date: 2021-12-22
  Time: 오후 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>

</head>
<body>

<div class="backgroundYellow">
    파일등록
</div>
<div>
    <div>
        <span class="backgroundPink" id="addInput">AddInput</span>
        <span class="backgroundPink" id="insertImg">insertImg</span>
        <span class="backgroundPink" id="searchFiles">searchFiles</span>
        <form action="/etc/insertImg.do" method="post" enctype="multipart/form-data">
            <div id="inputDiv" class="backgroundBlue">
            </div>
            <input type="submit" value="등록">
        </form>
        <div id="filesDiv" class="backgroundGreen">
        </div>
    </div>
</div>

</body>
</html>
<script>

    // 파일 등록창 추가
    $("#addInput").on("click", function() {
        $("#inputDiv").append(
            $("<div>").append(
                $("<input>", {type:"file", name:"files"}),
                $("<span>", {text:"delete", class:"backgroundYellow"}).on("click", function() {
                    $(this).parent("div").remove();
                })
            )
        )
    });

    // 파일 등록
    $("#insertImg").on("click", function() {
        const formData = new FormData();
        const files = $("#inputDiv").find("input[type='file']");

        files.each(function(index, item) {
            formData.append('files['+index+']', item.files[0]);
        });

        console.log(formData);

        $.ajax({
            url: "/etc/insertImgFile.do",   //주소
            data: formData,                 //전송 데이터
            type: "POST",                   //전송 타입
            enctype: "multipart/form-data", //form data 설정
            processData: false,             //프로세스 데이터 설정 : false 값을 해야 form data로 인식합니다
            contentType: false,             //헤더의 Content-Type을 설정 : false 값을 해야 form data로 인식합니다

            /* 응답 확인 부분 */
            success: function(response) {
                console.log("");
                console.log("[serverUploadImage] : [response] : " + response);
                console.log("");
            },

            /* 에러 확인 부분 */
            error: function(xhr) {
                console.log("");
                console.log("[serverUploadImage] : [error] : " + xhr);
                console.log("");
            },

            /* 완료 확인 부분 */
            complete:function(data,textStatus) {
                console.log("");
                console.log("[serverUploadImage] : [complete] : " + textStatus);
                console.log("");
            }
        });
    });

    // 파일 확인
    $("#searchFiles").on("click", function() {
        const url = "<c:url value='/etc/searchFiles.do'/>";
        const callBackFn = function (data){
            const $filesDiv = $("#filesDiv").empty();

            data.forEach(function(item) {
                $filesDiv.append(
                    $("<img>", {src:"/resources/uploadFiles/" + item, style:"width:200px; height:200px"})
                );
            });
        };

        fnAjax(url, "", callBackFn);
    });




</script>