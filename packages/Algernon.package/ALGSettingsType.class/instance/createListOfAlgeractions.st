list creation
createListOfAlgeractions
	| list aSetting |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aSetting := self typeObject.
	
	list add: (ALGAction withName:'open' 
					rank:10 target:self selector:#open: args:(OrderedCollection with:aSetting)).
	
	^list.