filtering
computeFuzzyItemsOutOf: anItemCollection given: aStringCollection
	| queryString |
	aStringCollection first isEmpty ifTrue: [ ^OrderedCollection new ].
	queryString := aStringCollection joinSeparatedBy: ' '.
	anItemCollection do: [ :item | item fuzzyRank: (ALGFuzzyMatcher computeScore: item given: queryString)].
	^ self sortByFuzzyRank: anItemCollection.