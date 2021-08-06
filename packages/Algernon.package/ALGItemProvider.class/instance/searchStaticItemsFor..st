filtering
searchStaticItemsFor: aString 
	| items |
	
	items := self filteredStaticItemsFor: aString asLowercase.
	self cache allMatchedItemsAt: (self cacheKeyFor: aString) put: items.
	items := self processMatchedItems: items given: aString.
	self cache finalResultsAt: (self cacheKeyFor: aString) put: items.

	^ items