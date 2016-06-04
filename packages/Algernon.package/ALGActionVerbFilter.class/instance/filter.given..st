filtering
filter: anItemCollection given: aStringCollection

	| items actionVerb itemName itemsToMatchFuzzy|
	self flag: #TODO. "Severe redundancies with ALGRegularFilter"
	actionVerb := aStringCollection first.
	itemName := aStringCollection second.
	items := anItemCollection select:
		[ :each | (each isRelevantGiven: itemName) & (each matchesAction: actionVerb) ].
	self flag: #TODO. "This is ugly, we should have fuzzy search results and non fuzzy ones. We need to set this, otherwise scoring is messed up."
	items do: [ :item | item fuzzyRank: 0 ].
	items size < self minimumItemsToCompute 
		ifTrue: [ itemsToMatchFuzzy := (anItemCollection copyWithoutAll: items) select: [:each | each matchesAction: actionVerb].
				items addAll: (self computeFuzzyItems: (self minimumItemsToCompute) - (items size) outOf: itemsToMatchFuzzy given: aStringCollection)].
	
	items do: [ :each | each updateDefaultActionTo: actionVerb ].
	
	^ items