require('behave').andSetup(this);

describe("Index controller tests", function() {
	
	var index = null;
	it("Controller exists", function() {
		index = Alloy.createController("index");
		expect(index).notToBe(null);
	});
	
	it("Correct hash", function(){
		seed = 'test';
		host = 'test.com';
		password = 'test';
		hash = '1huk950kdy36r5zl';
		
		generated_hash = index.createHash(seed, host, password);
		expect(generated_hash).toBe(hash);
	});
	
	it("Host case independent", function(){
		seed = 'test';
		host = 'TEST.COM';
		password = 'test';
		hash = '1huk950kdy36r5zl';
		
		generated_hash = index.createHash(seed, host, password);
		expect(generated_hash).toBe(hash);
	});
});
