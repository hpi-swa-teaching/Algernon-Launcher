testing
testAlgernonClass

	self ensureMorphic.
	self deny: self algerInstance textField = nil.
	self deny: self algerInstance = nil.
	self deny: self algerInstance class activationString = nil