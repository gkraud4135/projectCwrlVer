function fnAjax(actnUrl, jsonData, callBckFnctn) {

    $.ajax({
        url: actnUrl
        , type: 'post'
        , data: JSON.stringify(jsonData)
        //, data: jsonData
        , dataType : "json"
        , contentType: "application/json; charset=UTF-8"
        , error : function(xhr, status, err){
            try{
                //세션값이 널
                if(xhr.status == "503")	{
                    //location.href = "/index.do";
                    alert("ERROR503");
                } else if(xhr.status == "501") {
                    alert("ERROR501");
                } else {
                    var errorText = JSON.parse(xhr.responseText);
                    if(errorText.message) {
                        alert(errorText.message);
                    } else {
                        alert("");
                    }
                }
            }catch(e){
                console.log(e);
                alert("error call back function error.");
            }
        }
        , success:function(data) {
            if (callBckFnctn) {
                try {
                    callBckFnctn(data);
                } catch (e) {
                    console.log(e);
                    alert("call back function error.");
                }
            }
        }
    });
}