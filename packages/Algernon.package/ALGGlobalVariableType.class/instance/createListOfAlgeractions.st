list creation
createListOfAlgeractions
	| list aVar |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aVar := self typeObject value.
		list add: (ALGAction withName:'inspect' 
					rank:4 target:aVar selector:#inspect args:#()).
	^list.