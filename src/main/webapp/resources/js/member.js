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

    add : function(){
        var ajaxParam = {
            url: "/REST/member/add",
            data: $("form[name='form-member-register']").serialize(),
            method: "POST",
            success: function(result){
                if(result == null){
                    alert("회원등록에 실패하였습니다.");
                    return false;
                } else{
                    location.href ="/";
                }
            },
            error: function(){
                alert("error");
            }
        };
        $.ajax(ajaxParam);
    }
}