filtering
filter: anItemCollection given: aStringCollection 
	| matchedItems actionVerb itemName |
	actionVerb := aStringCollection first.
	itemName := aStringCollection allButFirst joinSeparatedBy: ' '.
	matchedItems := anItemCollection select: [:each | each matchesAction: actionVerb ].
	matchedItems := self computeFuzzyItemsOutOf: (matchedItems) given: aStringCollection allButFirst..
	^ matchedItems
		do: [:each | each updateDefaultActionTo: actionVerb ]