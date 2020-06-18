filtering
filter: anItemCollection given: aStringCollection

	| resultItems |
	resultItems := self computeFuzzyItems: (self minimumItemsToCompute)  outOf: (anItemCollection) given: aStringCollection.
	resultItems do: [ :each | each defaultIndex: 1 ].
	^ resultItems