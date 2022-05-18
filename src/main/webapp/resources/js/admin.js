function userDelete(){
	
	$('#userDelete').click(function(){
		
		var user_id = $('#user_id').val();
		location.href="/userDelete";
		
	});
	
}

let moveForm = $("#moveForm");

$(".pageInfo a").on("click", function(e){
 
        e.preventDefault();
        moveForm.find("input[name='pageNum']").val($(this).attr("href"));
        moveForm.attr("action", "/admin");
        moveForm.submit();
    });
