list creation
createListOfAlgeractions
	| list aPackage |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aPackage := self typeObject.
	
	list add: (ALGAction withName:'open (Monticello)' 
					rank:10 target:self selector:#open: args:(OrderedCollection with: aPackage)).
	list add: (ALGAction withName:'browse'
					rank:9 target:self selector:#openPackage: args:(OrderedCollection with: aPackage)).
	^list.