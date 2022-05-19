let moveForm = $("#moveForm");

$(".pageInfo a").on("click", function(e){
 
        e.preventDefault();
        moveForm.find("input[name='pageNum']").val($(this).attr("href"));
        moveForm.attr("action", "/adminRestroom");
        moveForm.submit();
    });

    

