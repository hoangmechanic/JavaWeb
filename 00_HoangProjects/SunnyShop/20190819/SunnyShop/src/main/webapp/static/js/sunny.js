$(document).ready(function(){
	$("[data-update-info]").on("input", function(){
		info = $(this).attr("data-update-info").split("~"); // [id, discount, unitPrice]
		qtt = $(this).val();
		$.ajax({
			url:"/cart/update/"+info[0]+"/"+qtt,
			success:function(response){
				$("#cart-cnt").html(response.count);
				$("#cart-amt").html(response.amount);
			}
		});
		amt = info[2]*qtt*(1-info[1])
		$(this).parents("tr").find(".nn-amt").html(amt);
	});
	
	$(".nn-clear").click(function(){
		$.ajax({
			url:"/cart/clear",
			success:function(response){
				$("#cart-cnt").html(0);
				$("#cart-amt").html(0);
			}
		});
		var trs = $(".nn-cart-items").find("tr");
		for(var i=trs.length-1; i >= 0;i--){
			$(trs.get(i)).hide(500);
		}
	});
	
	$("[data-id-remove-from-cart]").click(function(){
		id = $(this).attr("data-id-remove-from-cart");
		$.ajax({
			url:"/cart/remove/"+id,
			success:function(response){
				$("#cart-cnt").html(response.count);
				$("#cart-amt").html(response.amount);
			}
		});
		$(this).parents("tr").hide(500);
	});
	
	$("[data-id-add-to-cart]").click(function(){
		id = $(this).attr("data-id-add-to-cart");
		$.ajax({
			url:"/cart/add/"+id,
			success:function(response){
				$("#cart-cnt").html(response.count);
				$("#cart-amt").html(response.amount);
			}
		});
		img = $(this).parents(".nn-prod").find(".panel-body img");
		
		var css = ".nn-cart-css{" +
				"background-image: url('"+img.attr("src")+"');" +
				"background-size: 100% 100%;}";
		$("#nn-cart-css").html(css);
		
		img.effect("transfer", {to:".nn-cart-img", className:"nn-cart-css"}, 1000);
	});
	
	$("[data-id-send-to-friend]").click(function(){
		id = $(this).attr("data-id-send-to-friend");
	});
	
	$("[data-id-send]").click(function(){
		from = $("#sender").val();
		to = $("#receiver").val();
		subject = $("#subject").val();
		content = $("#content").val();
		$.ajax({
			url:"/prod/send-to-friend/"+id,
			data:{from: from, to: to, subject: subject, content: content},
			success:function(response){
				alert(response);
			}
		});
	});
	
	$("[data-id-mark-as-favorite]").click(function(){
		id = $(this).attr("data-id-mark-as-favorite");
		$.ajax({
			url:"/prod/mark-as-favorite/"+id,
			success:function(response){
				alert(response);
			}
		});
	});
});