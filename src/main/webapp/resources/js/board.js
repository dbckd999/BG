
let moveForm = $("#moveForm");
/*$(".move").on("click", function(e){
  e.preventDefault
  

  moveForm.append("<input type='hidden' name='b_no' value='" + $(this).attr("href")+"'>");
moveForm.attr("action", "/board/get");
moveForm.submit;
*/



$(".pageInfo a").on("click", function(e){
 
        e.preventDefault();
        moveForm.find("input[name='pageNum']").val($(this).attr("href"));
        moveForm.attr("action", "/boardList");
        moveForm.submit();
    });




$("#boardBtn").click(function() {
	
	var b_title = $("#b_title").val();
	var b_content = $("#b_content").val();
	var boardInsertForm = $("boardInsertForm").val();

	if (b_title == null || b_title.trim() == "") {
		alert('제목을 입력해주세요');
		return false;
	}
	
	if (b_content == null || b_content.trim() == "") {
		alert("글을 작성해주세요")
		return false;
	}

	if (b_title == true && b_content == true) {
		boardInsertForm.submit();
	}
	else {
		boardInsertForm.reset();
	}



})





