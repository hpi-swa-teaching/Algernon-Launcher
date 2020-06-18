filtering
filter: anItemCollection given: aStringCollection 
	| actionVerb itemName |
	actionVerb := aStringCollection first.
	itemName := aStringCollection allButFirst joinSeparatedBy: ' '.
	
	^ (super filter: anItemCollection given: aStringCollection allButFirst)
		select: [:each | each matchesAction: actionVerb ];
		do: [:each | each updateDefaultActionTo: actionVerb].