require('behave').andSetup(this);

describe("Index controller tests", function() {
	
	var index = null;
	it("Controller exists", function() {
		index = Alloy.createController("index");
		expect(index).notToBe(null);
	});
});
