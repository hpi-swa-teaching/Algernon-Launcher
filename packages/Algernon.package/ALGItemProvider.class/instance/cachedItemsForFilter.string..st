filtering
cachedItemsForFilter: aFilter string: aString
	Transcript show: aString, '; ', (self cacheKeyFor: aString); cr.
	^ aFilter supportsSubstringCaching
		ifTrue: [ self cache getLargestSubstringMatch: (self cacheKeyFor: aString) ifMiss: self items ]
		ifFalse: [ self items ] 