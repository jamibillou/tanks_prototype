@show_rack = (rack_id) ->
	$('a.selected').removeClass('selected')
	$('#rack'+rack_id).addClass('selected')
	$.ajax 'pages/render_rack',
	dataType: 'html',
	type: 'POST',
	data: {rack_id:'rack'+rack_id},
	success: (data) ->
		$('#info_rack').html(data)
