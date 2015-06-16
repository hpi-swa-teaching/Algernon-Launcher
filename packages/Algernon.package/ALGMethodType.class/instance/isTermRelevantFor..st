accessors
isTermRelevantFor: aLowercaseString

	^ self methodContent asLowercase includesSubString: aLowercaseString