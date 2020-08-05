testing class type
testAlgernonClass
	self ensureMorphic.
	self deny: self algInstance textField equals: nil.
	self deny: self algInstance equals: nil.
	self deny: self algInstance class activationString equals: nil