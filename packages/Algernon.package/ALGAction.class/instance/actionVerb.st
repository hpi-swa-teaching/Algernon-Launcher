accessing
actionVerb
	self name isEmpty
		ifTrue: [ ^ self name]
		ifFalse: [ ^ (self name subStrings: ' ') first asLowercase ]