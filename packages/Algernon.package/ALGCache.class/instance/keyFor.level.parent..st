caching
keyFor: aString level: aNumber parent: anItem
	"Returns the cache key depending on the term and the level such as searching globally (level 0) or within a class (level 1). Levels above 0 therefore require the parent to be included in the cacheKey"
	self assert: aNumber >= 0.
	self assert: (aNumber = 0 or: [ anItem notNil ]).
	(aNumber = 0)
		ifFalse: [ ^ aString, '#', aNumber, '#', anItem hash ].
	^ aString