relevance
fuzzySearchMatches: aLowercaseString
	"Determines wheater a string is matched by the tem"
	| theName lastPostition positionBackup sizeToCheck minimumFaultToleranceLength foundChars matchingPositions |

	theName := self lowerCaseName.
	lastPostition := 0.
	positionBackup := 0.
	minimumFaultToleranceLength := 5.
	foundChars := 0.
	matchingPositions := OrderedCollection new.
	sizeToCheck :=(aLowercaseString size).

	 1 to: sizeToCheck do: [ :c | | char | 
		char := (aLowercaseString at: c) asString.
		(char = String space ) ifFalse: [ positionBackup := lastPostition.
			lastPostition := theName findString: char startingAt: (lastPostition + 1).
			
			lastPostition = 0 ifTrue: [ foundChars < minimumFaultToleranceLength ifTrue: [^ false]
																				     ifFalse: [lastPostition := positionBackup]]
							  ifFalse: [foundChars := foundChars + 1. matchingPositions add: lastPostition ]. 
		].]. 
	self matchingPositions: matchingPositions.
	^ true.