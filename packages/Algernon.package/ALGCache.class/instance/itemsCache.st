accessing
itemsCache

	itemsCache ifNil: [ self itemsCache: Dictionary new ].
	^ itemsCache