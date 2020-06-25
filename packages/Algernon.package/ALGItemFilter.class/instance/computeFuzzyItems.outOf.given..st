filtering
computeFuzzyItems: aNumber outOf: anItemCollection given: aStringCollection
	| fuzzySortedItems|
	(aNumber <= 0) ifTrue: [ ^OrderedCollection new ].
	fuzzySortedItems :=  (self computeFuzzyItemsOutOf: anItemCollection given: aStringCollection). 
	^ fuzzySortedItems first: (aNumber min: fuzzySortedItems size)