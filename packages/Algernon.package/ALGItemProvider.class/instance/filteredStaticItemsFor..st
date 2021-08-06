filtering
filteredStaticItemsFor: aString
	| filterStrategy tokens |
	tokens := self tokenize: aString.
	filterStrategy := self itemFilterFor: tokens.
	^ filterStrategy
		filter: (self cachedItemsForFilter: filterStrategy string: aString)
		given: tokens