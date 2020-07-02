testing
testVisibility
	
	self algerInstance deactivate.
	self deny: self algerInstance visible.
	self algerInstance activate.
	self assert: self algerInstance visible.
	