caching
getLargestSubstringMatch: aString ifMiss: missItems 
	| searchFor |
	aString ifEmpty: [^ missItems].
	searchFor := aString.
	[searchFor ~= ''] whileTrue: [
	self allMatchedItems
				at: searchFor
				ifPresent: [:items | ^ items]
				ifAbsent: [searchFor := searchFor allButLast]].
	^ missItems