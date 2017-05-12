relevance
isRelevantGiven: aLowercaseString 

	aLowercaseString ifEmpty: [^ self isRelevantForEmptyString].
	^ (self initials includesSubstring: aLowercaseString)
		| (self lowerCaseName includesSubstring: aLowercaseString)
		| (self algerType isTermRelevantFor: aLowercaseString)