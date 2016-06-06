caching
add: anObject toDict: aDict atValue: aString
	
	| set |
	set := aDict at: aString asSymbol ifAbsentPut: [ Set new ].
	set add: anObject