testing
testAlgernonClass

	self ensureMorphic.
	self deny: algerInstance textField isNil.
	self deny: algerInstance isNil.
	self deny: algerInstance class activationString isNil