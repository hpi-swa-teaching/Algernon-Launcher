relevance
matchesComment: aString

	self algerType hasComment
		ifFalse: [ ^ false ].
	"^ (self class commentCache at: aString asSymbol ifAbsent: [^ false] ) includes: self algerType typeObject"
	^ self algerType matchesComment: aString.