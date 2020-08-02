accessing
hasIconFor: aSymbol 
	self class iconNames
		detect: [:key | key = aSymbol]
		ifNone: [^ false].
	^ true