actions
createActionOpenFor: aPackage

	^ ALGAction
			withName: 'open (Monticello)' 
			rank: 10
			target: self
			selector: #open:
			args: (OrderedCollection with: aPackage)