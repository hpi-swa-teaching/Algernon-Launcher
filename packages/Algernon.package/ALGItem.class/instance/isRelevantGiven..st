relevance
isRelevantGiven: aLowercaseString 

	aLowercaseString ifEmpty: [^ self isRelevantForEmptyString].
	^ (self initials includesSubstring: aLowercaseString)
		| (self lowerCaseName includesSubString: aLowercaseString)
		| (self algerType isTermRelevantFor: aLowercaseString)