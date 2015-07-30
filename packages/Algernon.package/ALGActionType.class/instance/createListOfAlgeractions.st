actions
createListOfAlgeractions

	| list |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	list add: self createActionDo.
	^ list