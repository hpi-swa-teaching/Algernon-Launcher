filtering
searchForItems: aString

	| items |
	items := self filteredItemsFor: (aString asLowercase).
	self cache at: (self cacheKeyFor: aString) put: items.
	^ self processMatchedItems: items given: aString