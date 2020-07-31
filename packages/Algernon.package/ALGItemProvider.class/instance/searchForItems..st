filtering
searchForItems: aString 
	| items |
	items := self cache finalResultsAt: (self cacheKeyFor: aString).
	items ifEmpty: [items := self filteredItemsFor: aString asLowercase.
			self cache allMatchedItemsAt: (self cacheKeyFor: aString)
				put: items.
			items := self processMatchedItems: items given: aString.
			self cache finalResultsAt: (self cacheKeyFor: aString)
				put: items].
	^ items