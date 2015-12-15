relevance
matchesComment: aString

	| substrings |
	(self algertype hasComment)
		ifFalse: [ ^ false ].
	substrings := self algertype comment string asLowercase subStrings: ' '.
	^ substrings anySatisfy: [ :each | each = aString ]