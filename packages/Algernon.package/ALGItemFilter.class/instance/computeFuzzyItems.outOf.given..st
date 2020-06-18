filtering
computeFuzzyItems: aNumber outOf: anItemCollection given: aStringCollection
	| fuzzyMatcher fuzzySortedItems|
	(aNumber <= 0 or: [aStringCollection first isEmpty]) ifTrue: [ ^OrderedCollection new ].
	fuzzyMatcher := ALGFuzzyMatcher new.
	anItemCollection do: [ :item | item fuzzyRank: (fuzzyMatcher computeScore: item given: aStringCollection)].
	fuzzySortedItems := anItemCollection sort: [ :a :b | (b fuzzyRank) < (a fuzzyRank)].
	^ fuzzySortedItems first: (aNumber min: fuzzySortedItems size)