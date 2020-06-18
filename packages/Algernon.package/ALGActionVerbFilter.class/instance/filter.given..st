filtering
filter: anItemCollection given: aStringCollection 
	| fuzzyMatchedItems actionVerb itemName |
	actionVerb := aStringCollection first.
	itemName := aStringCollection allButFirst joinSeparatedBy: ' '.
	
	fuzzyMatchedItems := (((self computeFuzzyItemsOutOf: (anItemCollection) given: aStringCollection allButFirst))
		select: [:each | each matchesAction: actionVerb ]).	
			
	^  (fuzzyMatchedItems first: (self minimumItemsToCompute min: fuzzyMatchedItems size))
		do: [:each | each updateDefaultActionTo: actionVerb].