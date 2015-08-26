{MATRIZ}

$j('#{ID_TYPE_IN_FIELDS}').autocomplete({
	source:{LISTA},
	minLength:3,
	hidden:'#{HIDDEN_ID}',
	hiddenSource:matriz_{HIDDEN_ID},
	divId:'#{DIV_ID}',
	mySelf:'#{ID_TYPE_IN_FIELDS}',
	selectFirst: true,
	select:function(event, ui) {
		var seleccion = $j(ui.item);
		var input = $j('#{ID_TYPE_IN_FIELDS}');
		input.val(seleccion.val());
		city_code = matriz_{HIDDEN_ID}[$j(seleccion).val()];
		$j('#{HIDDEN_ID}').val(city_code);
	}
	}).blur(function() {
		jQuery('#{DIV_ID}').css('display', 'none');
	});

