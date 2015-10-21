running
testAlgernonOpen

	Algernon open.
	self deny: Algernon currentInstance isNil.
	self assert: Algernon currentInstance active.
	Algernon close