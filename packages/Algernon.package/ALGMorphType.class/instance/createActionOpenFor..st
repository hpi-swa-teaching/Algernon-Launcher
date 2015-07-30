actions
createActionOpenFor: aVar

	^ ALGAction
			withName: 'open' 
			rank: 5
			target: self
			selector: #createMorph:
			args: (OrderedCollection with: aVar)