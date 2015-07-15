accessing
hasIconFor: aSymbol
	self class fileMapping keys detect: [:key | key = aSymbol] ifNone: [ ^ false ].
	^ true