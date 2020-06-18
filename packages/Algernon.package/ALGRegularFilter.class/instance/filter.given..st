filtering
filter: anItemCollection given: aStringCollection

	| resultItems keyword itemsMatchingComment |
	keyword := aStringCollection first.
	resultItems := self computeFuzzyItems: (self minimumItemsToCompute)  outOf: (anItemCollection) given: aStringCollection.
	itemsMatchingComment := self filter: anItemCollection classesByCommentContaining: keyword.
	itemsMatchingComment do: [ :each | resultItems addIfNotPresent: each ].
	resultItems do: [ :each | each defaultIndex: 1 ].
	^ resultItems select: [ :each | each isRelevantGiven: keyword ]