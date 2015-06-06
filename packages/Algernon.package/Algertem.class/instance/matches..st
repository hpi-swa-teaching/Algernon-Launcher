relevance
matches: aLowercaseString
	"Determines wheater a string is matched by the tem"
	| theName lastPostition |

	theName := self lowerCaseName.

	lastPostition := 0.
	1 to: (aLowercaseString length) do: [ :c | | char | 
		char :=  aLowercaseString at: c.
		(char = String space ) ifFalse: [ lastPostition := theName findFirstInByteString: char startingAt: lastPostition.
			lastPostition = 0 ifTrue: [ ^ False.]. 
		].]. 
	
	^ (self initials includesSubString: aLowercaseString)
		| (theName beginsWith: aLowercaseString)