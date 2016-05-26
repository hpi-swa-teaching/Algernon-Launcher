caching
addClass: aClass toDict: aDict atValue: aString
	
	| set |
	set := aDict at: aString ifAbsentPut: [ Set new ].
	set add: aClass