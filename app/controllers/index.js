function doRndphrase(e){
	//If nothing is there, it does not make sense to rndphrase
	if($.seed.value != '' && $.password.value != '' && $.domain.value != ''){
		$.rndphrase.value = $.seed.value + $.password.value + $.domain.value;
	}
}

$.index.open();
