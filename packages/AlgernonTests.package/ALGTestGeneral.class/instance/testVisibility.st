testing
testVisibility
	
	self algInstance deactivate.
	self deny: self algInstance visible.
	self algInstance activate.
	self assert: self algInstance visible.
	