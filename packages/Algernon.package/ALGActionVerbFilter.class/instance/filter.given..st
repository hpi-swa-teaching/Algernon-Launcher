filtering
filter: anItemCollection given: aStringCollection 
	| matchedItems actionVerb itemName |
	actionVerb := aStringCollection first.
	itemName := aStringCollection allButFirst joinSeparatedBy: ' '.
	
	matchedItems := self specialSelection: anItemCollection given: actionVerb.
	matchedItems ifNil: [
		matchedItems := self computeFuzzyItemsOutOf: (anItemCollection) given: aStringCollection allButFirst ].
	matchedItems := matchedItems select: [:each | each matchesAction: actionVerb ].
	matchedItems :=  (matchedItems first: (self minimumItemsToCompute min: matchedItems size))
		do: [:each | each updateDefaultActionTo: actionVerb ].
	
	^ matchedItems