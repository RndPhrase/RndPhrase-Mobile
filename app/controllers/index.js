var rndphrase = require("rndphrase").rndphrase;

$.createHash = function(seed, host, password){
	var host_cased = host.toLowerCase();
	
	var r = new rndphrase.RndPhrase(host_cased);
	r.set_seed(seed);
	try{
		generator = r.generator_from_host(host_cased);
		return generator(password);
	} catch (e){
		Titanium.API.log('error','Could not generate generator');
		return undefined;
	}
}

function doRndphrase(e){
	var seed = $.seed.value;
	//Let the seed be persisted for now upon changing it
	Titanium.App.Properties.setString("seed",seed);
	
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

$.seed.value = Titanium.App.Properties.getString("seed","");
$.index.open();
