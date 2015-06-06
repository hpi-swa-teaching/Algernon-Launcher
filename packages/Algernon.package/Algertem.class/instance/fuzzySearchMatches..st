relevance
fuzzySearchMatches: aLowercaseString
	"Determines wheater a string is matched by the tem"
	| theName lastPostition |

	theName := self lowerCaseName.

	lastPostition := 0.
	1 to: (aLowercaseString size) do: [ :c | | char | 
		char := (aLowercaseString at: c) asString.
		(char = String space ) ifFalse: [ lastPostition := theName findString: char startingAt: (lastPostition + 1).
			lastPostition = 0 ifTrue: [ ^ false.]. 
		].]. 
	
	^ true.