filtering
filter: anItemCollection given: aStringCollection

	| items actionVerb itemName |
	actionVerb := aStringCollection first.
	itemName := aStringCollection second.
	items := anItemCollection select:
		[ :each | (each isRelevantGiven: itemName) & (each matchesAction: actionVerb) ].
	items do: [ :each | each updateDefaultActionTo: actionVerb ].
	^ items