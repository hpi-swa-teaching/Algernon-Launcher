filtering
cachedItemsForFilter: aFilter string: aString
	^ aFilter supportsSubstringCaching
		ifTrue: [ self cache getLargestSubstringMatch: aString ifMiss: self items ]
		ifFalse: [ self items ] 