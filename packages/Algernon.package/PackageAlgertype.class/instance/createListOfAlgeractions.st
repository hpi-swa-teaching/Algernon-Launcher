list creation
createListOfAlgeractions
	| list aPackage |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aPackage := self typeObject.
	
	list add: (Algeraction withName:'browse Package' 
					rank:10 target:self selector:#openInExistingBrowser: args:(OrderedCollection with: aPackage)).
	^list.