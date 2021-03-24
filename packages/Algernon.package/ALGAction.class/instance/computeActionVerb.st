accessing
computeActionVerb
	self name isEmpty
		ifTrue: [^ self name]
		ifFalse: [^ self name substrings first asLowercase]
		