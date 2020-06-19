filtering
computeFuzzyItemsOutOf: anItemCollection given: aStringCollection
	| fuzzyMatcher fuzzySortedItems queryString |
	aStringCollection first isEmpty ifTrue: [ ^OrderedCollection new ].
	fuzzyMatcher := ALGFuzzyMatcher new.
	queryString := aStringCollection joinSeparatedBy: ' '.
	anItemCollection do: [ :item | item fuzzyRank: (fuzzyMatcher computeScore: item given: queryString)].
	fuzzySortedItems := (anItemCollection select: [ :each | each fuzzyRank isNil not ]) sort: [ :a :b | (b fuzzyRank) < (a fuzzyRank)].
	^ fuzzySortedItems