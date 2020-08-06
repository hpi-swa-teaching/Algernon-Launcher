testing
testAlgernonOpen
	self algInstance activate.
	self deny: self algInstance isNil.
	self assert: self algInstance active.
	self algInstance deactivate