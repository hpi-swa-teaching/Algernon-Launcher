actions
createListOfAlgeractions

	| list aMethod |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aMethod := self typeObject.
	list add: (self createActionBrowseExistingFor: aMethod).
	list add: (self createActionBrowseNewFor: aMethod).
	list add: (self createActionSendersFor: aMethod).
	list add: (self createActionImplementorsFor: aMethod).
	^ list