drawing
abbreviatedString
	self contents size >= self lowerAbbreviationLengthLimit
		ifTrue: [^ (self contents asString copyFrom: 1 to: self lowerAbbreviationLengthLimit - self charactersAfterAbbreviation)
				, '...'
				, (self contents asString copyFrom: self contents size - self charactersAfterAbbreviation to: self contents size)]
		ifFalse: [^ self contents]