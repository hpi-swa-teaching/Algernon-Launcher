loading
loadFromCacheFor: aSymbol
	^ self imagesMap at: (self imagesMap keys detect: [:key | (key = aSymbol)])