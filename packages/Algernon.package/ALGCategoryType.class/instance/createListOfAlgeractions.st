list creation
createListOfAlgeractions
	| list aCategory |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aCategory := self typeObject.
		list add: (ALGAction withName:'browse category (existing)' 
					rank:5 target:self selector:#openInExistingBrowser: 
					args:(OrderedCollection with:aCategory)).
		list add: (ALGAction withName:'browse category (new)' 
					rank:4 target:self selector:#openInNewBrowser: 
					args:(OrderedCollection with:aCategory)).
		list add: (ALGAction withName:'fileOut category' 
					rank:3 target:SystemOrganization selector:#fileOutCategory: 
					args:(OrderedCollection with:aCategory)).
	list add: (ALGAction withName:'printOut category' 
					rank:2 target:self selector:#printOutCategory:
					args:(OrderedCollection with:aCategory)).			
	^list.