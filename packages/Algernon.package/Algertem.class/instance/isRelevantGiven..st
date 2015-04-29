relevance
isRelevantGiven: aLowercaseString 
	"determines whether or not an algertem is relevant given an input
	string relevant means it should show up in the pop up menu)"
	| theName |
	self isRelevantForEmptyString ifFalse:
		[aLowercaseString size = 0 ifTrue:[^ false.]].
	
	theName := self lowerCaseName.
	^ (theName beginsWith: aLowercaseString)
		| (self initials includesSubString: aLowercaseString)