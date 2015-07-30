actions
createActionOpenFor: aRepository

	^ ALGAction
			withName:'open' 
			rank: 10
			target: self
			selector:#open:
			args: (OrderedCollection with: aRepository)