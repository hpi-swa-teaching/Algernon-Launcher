testing
testVisibility
	
	algerInstance deactivate.
	self deny: algerInstance visible.
	algerInstance activate.
	self assert: algerInstance visible.
	