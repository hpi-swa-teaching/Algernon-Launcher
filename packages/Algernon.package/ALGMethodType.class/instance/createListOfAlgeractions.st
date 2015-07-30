list creation
createListOfAlgeractions
	| list aMethod |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aMethod := self typeObject.
	
	list add: (ALGAction withName:'browse (existing)' 
					rank:10 target:self selector:#openInExistingBrowser: args:(OrderedCollection with:aMethod)).
	list add: (ALGAction withName:'browse (new)'
					rank:9 target:self selector:#openInNewBrowser: args:(OrderedCollection with:aMethod)). 
	list add: (ALGAction withName:'senders of'
					rank:8 target:self selector:#browseAllCallsOn: args:(OrderedCollection with:aMethod)). 
	list add: (ALGAction withName:'implementors of'
					rank:7 target:self selector:#browseAllImplementorsOf: args:(OrderedCollection with:aMethod)). 

	^list.