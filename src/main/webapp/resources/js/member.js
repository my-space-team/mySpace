/**
 * member.js
 * 
 * @author jaewoo
 * 
 * Updated : 2023-03-10
 * 
 */
var $member = {
    init: function(){
        $member.bindHandler();
    },

    bindHandler : function(){
        $(document).on("click", ".js-add", $member.add);
    },

    add : function(event){
        event.preventDefault();
        var ajaxParam = {
            url: "/REST/member/add",
            beforeSend: function(xhr) {
                xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
              },
            data: $("form[name='form-member-register']").serialize(),
            type: "POST",
            success: function(result){
                if(result == null){
                    alert("회원등록에 실패하였습니다.");
                    return false;
                } else{
                    location.href ="/";
                }
            },
            error: function(){
                console.log(data + "저장되지 못함");
            }
        };
        $.ajax(ajaxParam);
    }
}

$member.init();