filtering
filteredItems: anItemCollection for: aString
	| filterStrategy tokens |
	tokens := self tokenize: aString.
	filterStrategy := self itemFilterFor: tokens.
	^ filterStrategy
		filter: anItemCollection
		given: tokens