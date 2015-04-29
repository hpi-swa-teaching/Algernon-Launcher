lists
isMatchingClass: aClassName given: aString
	"determines whether or not a classname should be listed based on the given string"
	^ 	(aClassName asLowercase beginsWith: aString asLowercase) | 
		(aClassName asLowercase includesSubString: aString asLowercase).
		"This line is slow:
		| (self matchesClassInitials: aClassName given: aString)."