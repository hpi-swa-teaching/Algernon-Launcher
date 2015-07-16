loading
loadIconFor: aSymbol
	^ (self hasIconFor: aSymbol)
		ifFalse: [ nil ]
		ifTrue: [(self hasCachedIconFor: aSymbol)
					ifTrue: [ self loadFromCacheFor: aSymbol ]
					ifFalse: [ self loadFromFileFor: aSymbol ] ].