filtering
resultsFor: aString

	| items |
	self updateItemPool.
	items := self relevantItemsFor: aString.
	(items isEmpty) ifFalse: [ ^ self createCategoriesFor: items ].
	^ items
	