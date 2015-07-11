relevance
isRelevantGiven: aLowercaseString 
	"determines whether or not an algertem is relevant given an input
	string relevant means it should show up in the pop up menu)"
	| theName |
	(aLowercaseString size = 0)
		ifTrue: [^ self isRelevantForEmptyString].
	theName := self lowerCaseName.
	^ (self initials includesSubString: aLowercaseString)
		| (self fuzzySearchMatches: aLowercaseString)
		| (theName beginsWith: aLowercaseString)
		| (self algertype isTermRelevantFor: aLowercaseString)