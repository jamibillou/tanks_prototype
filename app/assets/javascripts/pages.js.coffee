jQuery ->
	#$('.draggable').draggable()

@show_rack = (rack_id,box_id,position,length) ->
	$('a.selected').removeClass('selected')
	$('#rack'+rack_id).addClass('selected')
	$.ajax 'pages/render_rack',
	dataType: 'html',
	type: 'POST',
	data: {rack_id:'rack'+rack_id},
	success: (data) ->
		$('#info_rack').html(data)
		unless box_id is '' or position is ''
			if length > 0
				$('#'+box_id+'_'+i).addClass('position') for i in [position..(position+length)]
			else
				$('#'+box_id+'_'+position).addClass('position') 

@show_clone = (clone_id) ->
	$.ajax 'pages/render_clone',
	dataType: 'html',
	type: 'POST',
	data: {clone_id:clone_id},
	success: (data) ->
		$('#clone_table').html(data)

@show_position = (site,rack_id,box_id,position,length=0) ->
	$('.position').removeClass('position')
	$('#'+site).trigger('click')
	show_rack('1_'+rack_id,box_id,position,length) if site is 'Grenoble'
	show_rack('2_'+rack_id,box_id,position,length) if site is 'Lyon'