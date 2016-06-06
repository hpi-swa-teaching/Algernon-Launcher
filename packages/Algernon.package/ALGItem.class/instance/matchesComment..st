relevance
matchesComment: aString

	(self algertype hasComment)
		ifFalse: [ ^ false ].
	^ (self class commentCache at: aString asSymbol ifAbsent: [^ false] ) includes: self algertype typeObject.