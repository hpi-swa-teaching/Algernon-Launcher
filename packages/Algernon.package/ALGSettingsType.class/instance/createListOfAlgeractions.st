actions
createListOfAlgeractions

	| list aSetting |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aSetting := self typeObject.
	list add: (self createActionOpenFor: aSetting).
	^ list