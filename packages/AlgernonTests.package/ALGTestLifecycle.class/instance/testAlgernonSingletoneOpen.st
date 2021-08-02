testing
testAlgernonSingletoneOpen
	self algInstance deactivate.
	Algernon open.
	self assert: self algInstance active.
	Algernon cleanup