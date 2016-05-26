relevance
matchesComment: aString

	(self algertype hasComment)
		ifFalse: [ ^ false ].
	^ (self class commentCache at: aString ifAbsent: [^ false] ) includes: self algertype typeObject.