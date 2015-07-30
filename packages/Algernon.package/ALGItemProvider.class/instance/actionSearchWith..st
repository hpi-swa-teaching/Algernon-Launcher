filtering
actionSearchWith: aCollection

	| items actionVerb itemName |
	actionVerb := aCollection first.
	itemName := aCollection second.
	items := self items select:
		[ :each | (each isRelevantGiven: itemName) & (each supportsActionVerb: actionVerb) ].
	items do: [ :each | each updateDefaultActionTo: actionVerb ].
	^ sorter sort: items given: itemName