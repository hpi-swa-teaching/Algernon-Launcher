testing
testAlgernonClass
	"Make sure Algy is okay"
	self ensureMorphic.
	self deny: algerstance textField = nil.
	self deny: algerstance = nil.
	self deny: algerstance activationString = nil.
	
	^ nil