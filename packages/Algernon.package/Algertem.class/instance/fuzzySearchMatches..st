relevance
fuzzySearchMatches: aLowercaseString
	"Determines wheater a string is matched by the tem"
	| theName lastPostition positionBackup sizeToCheck minimumFaultToleranceLength foundChars |

	theName := self lowerCaseName.
	lastPostition := 0.
	positionBackup := 0.
	minimumFaultToleranceLength := 5.
	foundChars := 0.
	sizeToCheck :=(aLowercaseString size).

	 1 to: sizeToCheck do: [ :c | | char | 
		char := (aLowercaseString at: c) asString.
		(char = String space ) ifFalse: [ positionBackup := lastPostition.
			lastPostition := theName findString: char startingAt: (lastPostition + 1).
			
			lastPostition = 0 ifTrue: [ foundChars < minimumFaultToleranceLength ifTrue: [^ false]
																				     ifFalse: [lastPostition := positionBackup]]
							  ifFalse: [foundChars := foundChars + 1]. 
		].]. 

	^ true.