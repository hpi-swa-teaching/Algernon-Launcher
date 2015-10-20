testing
testAlgernonClass

	self ensureMorphic.
	self deny: algerstance textField = nil.
	self deny: algerstance = nil.
	self deny: algerstance class activationString = nil