list creation
createListOfAlgeractions
	| list aSetting |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aSetting := self typeObject.
	
	list add: (Algeraction withName:'open setting' 
					rank:10 target:self selector:#open: args:(OrderedCollection with:aSetting)).
	
	^list.