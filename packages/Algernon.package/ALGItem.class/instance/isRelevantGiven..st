relevance
isRelevantGiven: aLowercaseString 

	aLowercaseString ifEmpty: [^ self isRelevantForEmptyString].
	^ (self initials includesSubString: aLowercaseString)
		| (self lowerCaseName includesSubString: aLowercaseString)
		| (self algerType isTermRelevantFor: aLowercaseString)