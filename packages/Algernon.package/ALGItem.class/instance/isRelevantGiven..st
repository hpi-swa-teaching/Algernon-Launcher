relevance
isRelevantGiven: aLowercaseString 

	aLowercaseString ifEmpty: [^ self isRelevantForEmptyString].
	^ (self initials includesSubstring: aLowercaseString)
		or: [self lowerCaseName includesSubstring: aLowercaseString]
		or: [self algerType isRelevantGiven: aLowercaseString]