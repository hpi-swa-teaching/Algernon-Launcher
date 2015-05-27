list creation
createListOfAlgeractions
	| list aMethod |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aMethod := self typeObject.
	
	list add: (Algeraction withName:'open Repository' 
					rank:10 target:self selector:#openInExistingBrowser: args:(OrderedCollection with:aMethod)).
	list add: (Algeraction withName:'save Repository' 
					rank:9 target:self selector:#openInNewBrowser: args:(OrderedCollection with:aMethod)). 

	^list.