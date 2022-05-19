/*user_id = $('#user_id').val();*/

/*function adminDelete() {
	var user_list = document.getElementById('user_id').value;
		console.log(user_list);
>>>>>>> refs/remotes/origin/LSJ
		
<<<<<<< HEAD
		var user_id = $('#user_id').val();
		location.href="/userDelete";
		
	});
	
} */


let moveForm = $("#moveForm");

$(".pageInfo a").on("click", function(e){
 
        e.preventDefault();
        moveForm.find("input[name='pageNum']").val($(this).attr("href"));
        moveForm.attr("action", "/admin");
        moveForm.submit();
    });

   


