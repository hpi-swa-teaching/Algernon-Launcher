testing class type
testAlgernonClass
	self ensureMorphic.
	self deny: self algInstance textField = nil.
	self deny: self algInstance = nil.
	self deny: self algInstance class activationString = nil