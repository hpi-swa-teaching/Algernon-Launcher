actions
createListOfAlgeractions

	| list aClass |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aClass := self typeObject.
	list add: self createActionRun.
	^ list