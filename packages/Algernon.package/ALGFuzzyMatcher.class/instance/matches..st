matching
matches: aLowercaseString

	aLowercaseString do: [ :char | 
		(char = String space) ifFalse: [ self match: char asString ] ].
	^ self isMatch