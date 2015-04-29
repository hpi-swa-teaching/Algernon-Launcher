list creation
createListOfAlgeractions
	| list aVar |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aVar := self typeObject.
	list add: (Algeraction withName:'open' 
					rank:5 target:self selector:#createMorph: args:(OrderedCollection with:aVar)).
	^list.
	
