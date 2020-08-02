filtering
cachedItemsForFilter: aFilter string: aString
	^ self removeCacheArtifacts: (self cachedItemsForFilterUnprepared: aFilter string: aString).  