actions
createListOfAlgeractions

	| aVar |
	aVar := self typeObject value.
	^ self createSortedListFrom: { self createActionInspectFor: aVar }