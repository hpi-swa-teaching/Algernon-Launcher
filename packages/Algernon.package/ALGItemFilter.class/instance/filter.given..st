filtering
filter: anItemCollection given: aStringCollection
	| resultItems |
	resultItems := (self computeFuzzyItemsOutOf: (anItemCollection) given: aStringCollection).
	resultItems do: [ :each | each defaultIndex: 1 ].
	^ resultItems