loading
loadIconFor: aSymbol 
	^self scaleIcon: ((self hasIconFor: aSymbol)
		ifTrue: [(self hasCachedIconFor: aSymbol)
				ifTrue: [self loadFromCacheFor: aSymbol]
				ifFalse: [self loadFromStreamFor: aSymbol]])