filtering
filter: anItemCollection given: aStringCollection

	| resultItems keyword itemsMatchingComment|

	keyword := aStringCollection first.
	resultItems := anItemCollection select: [ :each | each isRelevantGiven: keyword ].
	itemsMatchingComment := self filter: anItemCollection classesByCommentContaining: keyword.
	itemsMatchingComment do: [ :each | resultItems addIfNotPresent: each ].

	resultItems do: [ :item | item fuzzyRank: 0 ].
	resultItems size < self minimumItemsToCompute 
		ifTrue: [resultItems addAll: (self computeFuzzyItems: (self minimumItemsToCompute) - (resultItems size) outOf: (anItemCollection copyWithoutAll: resultItems) given: aStringCollection)].
	
	resultItems do: [ :each | each defaultIndex: 1 ].
	^ resultItems