filtering
resultsFor: aString

	| resultItems |
	self updateItemPool.
	resultItems := self relevantItemsFor: aString.
	(resultItems isEmpty) ifFalse: [ ^ self createCategoriesFor: resultItems ].
	^ resultItems
	