accessing
hasCachedIconFor: aSymbol

	self imagesMap keys detect: [ :key | (key = aSymbol) ] ifNone: [ ^ false ].
	^ true