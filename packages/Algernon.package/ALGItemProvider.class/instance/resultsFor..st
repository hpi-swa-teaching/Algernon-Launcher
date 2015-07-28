filtering
resultsFor: aString

	| items |
	items := self relevantItemsFor: aString.
	(items notNil) ifTrue: [ ^ self createCategoriesFor: items ].
	^ items
	