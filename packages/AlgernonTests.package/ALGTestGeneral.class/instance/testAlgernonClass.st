testing
testAlgernonClass

	self ensureMorphic.
	self deny: algerInstance textField = nil.
	self deny: algerInstance = nil.
	self deny: algerInstance class activationString = nil