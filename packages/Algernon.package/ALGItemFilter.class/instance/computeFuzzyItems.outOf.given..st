filtering
computeFuzzyItems: aNumber outOf: anItemCollection given: aStringCollection

	| fuzzyMatcher fuzzySortedItems|
	fuzzyMatcher := ALGFuzzyMatcher new. 
	anItemCollection do: [ :item | item fuzzyRank: (fuzzyMatcher computeScore: item given: aStringCollection)].
	fuzzySortedItems := anItemCollection sort: [ :a :b | (b fuzzyRank) < (a fuzzyRank)].
	^ anItemCollection first: (aNumber min: fuzzySortedItems size)