actions
createListOfAlgeractions

	| list aVar |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aVar := self typeObject.
	list add: (self createActionOpenFor: aVar).
	^ list
	
