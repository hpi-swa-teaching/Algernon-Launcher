filtering
cachedItemsForFilterUnprepared: aFilter string: aString
	^ aFilter supportsSubstringCaching
		ifTrue: [ self cache getLargestSubstringMatch: (self cacheKeyFor: aString) ifMiss: self items ]
		ifFalse: [ self items ] 