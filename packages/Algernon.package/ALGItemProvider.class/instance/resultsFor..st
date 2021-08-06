filtering
resultsFor: aString

	| items |
	self updateItemPool.
	items := self searchAllItemsFor: aString.
	(items isEmpty) ifFalse: [ ^ self createCategoriesFor: items ].
	^ items
	