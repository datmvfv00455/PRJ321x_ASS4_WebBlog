$(document).ready(function() {
		$('.signup-form').submit(function(e) {
		e.preventDefault();
		var values = $(this).serialize();

		$.ajax({
			url : $(this).attr('action'),
			type : "post",
			data : values,
			success : function(response) {
 
				$.each(response, function(key, value) {
					if (key == "alert") {
						
						console.log(value);
						insertAlertMsg(value);
					} else if (key == "error") {	
						
						$.each(value, function(tag, value) {
							if (tag == "input") {
								$.each(value, function(id, msg) {
									inputTagError(id, msg);
								});
							} 
						});						
					}								
				});
			}
		});
	});

});	 

function insertAlertMsg(data) {
	$.each(data,function(alert, msg) {
		
	 
		
	if(alert == 'success'){
		
 		var html = $('<div>')
		.addClass("alert-message alert alert-block alert-"+ alert)
		.append(
				$('<button>')
						.addClass("close")
						.attr("type", "button")
						.attr("data-dismiss","alert")
						.append(
							$('<i>').addClass("fas far fa-check")
						)
		)
		.append(" "+msg);

			
		}else if(alert == 'danger'){
	 		var html = $('<div>')
			.addClass("alert-message alert alert-block alert-"+ alert)
			.append(
					$('<button>')
							.addClass("close")
							.attr("type", "button")
							.attr("data-dismiss","alert")
							.append(
								$('<i>').addClass("ace-icon fa fa-times")
							)
			)
			.append(" "+msg);
		}
	 
	
		if (!$(".alert-message").is(":visible")) {
			$(html).insertBefore($(".signup-form"));
	
		} else {
			$(".alert-message").remove();			
			$(html).insertBefore($(".signup-form"));
		}
		
	
		
		$(".error-message").remove();
		$("input").removeAttr("style");

		$("input").focusin(function() {
			$(this).css("box-shadow", "0 0 0 .2rem rgba(78, 115, 223, .25)");
		});
	 
		
		 
	});
}

function inputTagError(id, msg) {
	console.log(id + " : " + msg);
	
	$(".alert-message").remove();	
	
	if (msg == "OK") {
		$(id).children(".error-message").remove();
		$(id).children("input").removeAttr("style");
		$(id).children("input").focusin(function() {
			$(this).css("box-shadow", "0 0 0 .2rem rgba(78, 115, 223, .25)");
		});
	} else {
		if (!$(id).children("div").is(":visible")) {
			var html = $('<div>')
				.addClass("error-message")
				.append($('<i>').addClass("fas fa-exclamation-circle"))
				.append(" "+msg);			

			$(id).append(html);
		}
		
		$(id).find('input')
		.attr("border-color", "red")
	 
		.focusin(function() {
			$(this).css("box-shadow", "0 0 0 .1rem red");
		}).focusout(function() {
			$(this).css("box-shadow", "");
		});
	 
	}
}