testing
testAlgernonOpen

	self algerInstance activate.
	self deny: self algerInstance isNil.
	self assert: self algerInstance  active.
	self algerInstance deactivate