matching
matches: aLowercaseString

	(1 to: aLowercaseString size) do: [ :i | | char | 
		char := (aLowercaseString at: i) asString.
		(char = String space) ifFalse: [ self match: char ] ].
	^ self isMatch