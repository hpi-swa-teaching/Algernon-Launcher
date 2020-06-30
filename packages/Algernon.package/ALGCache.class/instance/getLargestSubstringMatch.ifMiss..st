caching
getLargestSubstringMatch: aString ifMiss: missItems
	| searchFor |
	searchFor := aString allButLast.
	[searchFor ~= '']
		whileTrue: [self
				at: searchFor
				ifPresent: [:items | ^ items]
				ifAbsent: [searchFor := searchFor allButLast]].
	^ missItems