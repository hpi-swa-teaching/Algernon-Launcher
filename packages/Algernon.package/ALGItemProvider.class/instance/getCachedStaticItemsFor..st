filtering
getCachedStaticItemsFor: aString 
	| items |
	items := self cache finalResultsAt: (self cacheKeyFor: aString).
	items ifNotEmpty: [
		items := self filteredItems: items for: aString asLowercase ].
	
	^ items