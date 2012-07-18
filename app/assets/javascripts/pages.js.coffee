jQuery ->
	#$('.draggable').draggable()

@show_rack = (rack_id) ->
	$('a.selected').removeClass('selected')
	$('#rack'+rack_id).addClass('selected')
	$.ajax 'pages/render_rack',
	dataType: 'html',
	type: 'POST',
	data: {rack_id:'rack'+rack_id},
	success: (data) ->
		$('#info_rack').html(data)

@show_clone = (clone_id) ->
	$.ajax 'pages/render_clone',
	dataType: 'html',
	type: 'POST',
	data: {clone_id:clone_id},
	success: (data) ->
		$('#clone_table').html(data)	