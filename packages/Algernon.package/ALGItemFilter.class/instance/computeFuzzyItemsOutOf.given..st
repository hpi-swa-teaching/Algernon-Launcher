filtering
computeFuzzyItemsOutOf: anItemCollection given: aStringCollection
	| fuzzySortedItems queryString |
	aStringCollection first isEmpty ifTrue: [ ^OrderedCollection new ].
	queryString := aStringCollection joinSeparatedBy: ' '.
	anItemCollection do: [ :item | item fuzzyRank: (ALGFuzzyMatcher computeScore: item given: queryString)].
	fuzzySortedItems := (anItemCollection select: [ :each | each fuzzyRank isNil not ]) sort: [ :a :b | (b fuzzyRank) < (a fuzzyRank)].
	^ self sortByFuzzyRank: anItemCollection.