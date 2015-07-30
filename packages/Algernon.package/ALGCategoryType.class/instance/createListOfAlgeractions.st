list creation
createListOfAlgeractions
	| list aCategory |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aCategory := self typeObject.
		list add: (ALGAction withName:'browse (existing)' 
					rank:5 target:self selector:#openInExistingBrowser: 
					args:(OrderedCollection with:aCategory)).
		list add: (ALGAction withName:'browse (new)' 
					rank:4 target:self selector:#openInNewBrowser: 
					args:(OrderedCollection with:aCategory)).
		list add: (ALGAction withName:'fileOut' 
					rank:3 target:SystemOrganization selector:#fileOutCategory: 
					args:(OrderedCollection with:aCategory)).
	list add: (ALGAction withName:'printOut' 
					rank:2 target:self selector:#printOutCategory:
					args:(OrderedCollection with:aCategory)).			
	^list.