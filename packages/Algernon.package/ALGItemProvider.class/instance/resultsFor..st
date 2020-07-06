filtering
resultsFor: aString

	| items |
	self updateItemPool.
	items := self searchForItems: aString.
	(items isEmpty) ifFalse: [ ^ self createCategoriesFor: items ].
	^ items
	