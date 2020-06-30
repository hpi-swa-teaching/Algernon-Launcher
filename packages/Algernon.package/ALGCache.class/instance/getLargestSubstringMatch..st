caching
getLargestSubstringMatch: aString 
	| searchFor |
	searchFor := aString allButLast.
	[searchFor ~= '']
		whileTrue: [self
				at: searchFor
				ifPresent: [:items | ^ items]
				ifAbsent: [searchFor := searchFor allButLast]].
	^ self items