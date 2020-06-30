caching
getLargestSubstringMatch: aString ifMiss: missItems 
	| searchFor |
	aString isEmpty ifTrue: [ ^ missItems ].
	searchFor := aString.
	[searchFor ~= '']
		whileTrue: [self
				at: searchFor
				ifPresent: [:items | ^ items]
				ifAbsent: [searchFor := searchFor allButLast]].
	^ missItems