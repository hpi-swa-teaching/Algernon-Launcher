relevance
isRelevantGiven: aLowercaseString 

	(aLowercaseString size = 0) ifTrue: [^ self isRelevantForEmptyString].
	^ (self initials includesSubString: aLowercaseString)
		| (self lowerCaseName includesSubString: aLowercaseString)
		| (self algertype isTermRelevantFor: aLowercaseString)