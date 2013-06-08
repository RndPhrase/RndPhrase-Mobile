var rndphrase = require("rndphrase").rndphrase;

$.createHash = function(seed, host, password){
	var r = new rndphrase.RndPhrase(host);
	r.set_seed(seed);
	try{
		generator = r.generator_from_host($.host.value);
		return generator(password);
	} catch (e){
		Titanium.API.log('error','Could not generate generator');
		return undefined;
	}
}

function doRndphrase(e){
	var seed = $.seed.value;
	var host = $.host.value;
	var password = $.password.value;
	var rndphrase = $.createHash(seed, host, password);
	if(rndphrase != undefined){
		$.clipboard.enabled = true;
		$.rndphrase.value = rndphrase;
	} else {
		$.clipboard.enabled = false;
	}
}

function doCopy(e){
	Ti.UI.Clipboard.setText($.rndphrase.value);
}

$.index.open();
