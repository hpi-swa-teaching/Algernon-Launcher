actions
createListOfAlgeractions

	| list aVar |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aVar := self typeObject value.
	list add: (self createActionInspectFor: aVar).
	^ list