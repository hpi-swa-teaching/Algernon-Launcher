lists
matchesClassInitials: aClassName given: aString
	"match on the uppercase of classname (e.g., if given a string OC, then OrderedCollection would match)"
	|capitals|
	capitals := aClassName select: [:each | (each isUppercase)].
	^capitals asLowercase includesSubString: aString asLowercase.