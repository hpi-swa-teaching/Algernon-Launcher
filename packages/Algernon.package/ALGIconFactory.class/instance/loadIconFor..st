loading
loadIconFor: aSymbol 
	^ self scaleIcon: ((self hasCachedIconFor: aSymbol)
				ifTrue: [self loadFromCacheFor: aSymbol]
				ifFalse: [self loadFromStreamFor: aSymbol])