actions
createListOfAlgeractions

	| list aCategory |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aCategory := self typeObject.
	list add: (self createActionBrowseExistingFor: aCategory).
	list add: (self createActionBrowseNewFor: aCategory).
	list add: (self createActionFileoutFor: aCategory).
	list add: (self createActionPrintoutFor: aCategory).
	^ list