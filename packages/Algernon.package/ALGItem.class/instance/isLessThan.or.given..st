comparison
isLessThan: aString or: anotherString given: aLowercaseString

	| me other |
	me := aString beginsWith: aLowercaseString.
	other := anotherString beginsWith: aLowercaseString.
	^(me and: [other not])
