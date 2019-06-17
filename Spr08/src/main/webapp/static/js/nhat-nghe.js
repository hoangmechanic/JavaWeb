$(function(){
	$("a[href=lang]").click(function(){
		event.preventDefault();
		href = $(this).attr();
	});
})