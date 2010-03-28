refresh_progressbar: () ->
	value: $("#progress_bar").progressbar("value")
	if value < 100
		$("#progress_bar").progressbar( { value: value + 5 } )
		setTimeout((() -> refresh_progressbar()), 100)
	else
		$("#progress_bar").progressbar( { value: 0 } )	

jQuery(document).bind "ready", () =>
	$("#dialog_box").dialog( { autoOpen: false } )
	$("#demo_form").bind "submit", () =>
		$("#dialog_box").dialog("open")
		false
	
	$("#page_date").datepicker()
	
	$("#page_tags").autocomplete( { 
		source: [
			"c++", "java", "php", "coldfusion", 
			"javascript", "asp", "ruby", "python", 
			"c", "scala", "groovy", "haskell", "perl"
		]
	} )
	
	$("button, input:submit").button()
	
	$("#progress_bar").progressbar()
	$("#progress_start").bind "click", () => 
		setTimeout((() -> refresh_progressbar()), 500)
	$("#progress_reset").bind "click", () => 
		$("#progress_bar").progressbar( { value: 0 } )
	
	$("#slider").slider()
	$("#slider").bind "slidechange", (event, ui) =>
		$("#page_slider").val $("#slider").slider("option", "value")
		
	$("#tabs").tabs()
	$("#tabs").tabs("select", 0)

	$("#accordion").accordion()