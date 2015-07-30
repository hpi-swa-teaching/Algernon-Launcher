relevance
isRelevantGiven: aLowercaseString 

	(aLowercaseString size = 0) ifTrue: [^ self isRelevantForEmptyString].
	^ (self initials includesSubString: aLowercaseString)
		| (self matches: aLowercaseString)
		| (self lowerCaseName beginsWith: aLowercaseString)
		| (self algertype isTermRelevantFor: aLowercaseString)