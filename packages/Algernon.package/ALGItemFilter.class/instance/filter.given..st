filtering
filter: anItemCollection given: aStringCollection
	| resultItems keyword |
	keyword := aStringCollection first.
	resultItems := (self computeFuzzyItems: (self minimumItemsToCompute)  outOf: (anItemCollection) given: aStringCollection).
	resultItems do: [ :each | each defaultIndex: 1 ].
	^ resultItems