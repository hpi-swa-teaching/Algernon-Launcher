filtering
filter: anItemCollection given: aStringCollection

	| resultItems actionVerb itemName itemsToMatchFuzzy|
	self flag: #TODO. "Severe redundancies with ALGRegularFilter"
	actionVerb := aStringCollection first.
	itemName := aStringCollection second.
	resultItems := anItemCollection select:
		[ :each | (each isRelevantGiven: itemName) & (each matchesAction: actionVerb) ].
	self flag: #TODO. "This is ugly, we should have fuzzy search results and non fuzzy ones. We need to set this, otherwise scoring is messed up."
	resultItems do: [ :item | item fuzzyRank: 0 ].
	resultItems size < self minimumItemsToCompute 
		ifTrue: [ itemsToMatchFuzzy := (anItemCollection copyWithoutAll: resultItems) select: [:each | each matchesAction: actionVerb].
				resultItems addAll: (self computeFuzzyItems: (self minimumItemsToCompute) - (resultItems size) outOf: itemsToMatchFuzzy given: aStringCollection)].
	
	resultItems do: [ :each | each updateDefaultActionTo: actionVerb ].
	
	^ resultItems