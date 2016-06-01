filtering
filter: anItemCollection given: aStringCollection

	| items actionVerb itemName itemsToMatchFuzzy|
	actionVerb := aStringCollection first.
	itemName := aStringCollection second.
	items := anItemCollection select:
		[ :each | (each isRelevantGiven: itemName) & (each matchesAction: actionVerb) ].
	items size < self minimumItemsToCompute 
		ifTrue: [ itemsToMatchFuzzy := (anItemCollection copyWithoutAll: items) select: [:each | each matchesAction: actionVerb].
				items addAll: (self computeFuzzyItems: (self minimumItemsToCompute) - (items size) outOf: itemsToMatchFuzzy given: aStringCollection)].
	
	items do: [ :each | each updateDefaultActionTo: actionVerb ].
	
	^ items