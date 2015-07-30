actions
createActionImplementorsFor: aMethod

	^ ALGAction
			withName: 'implementors of'
			rank: 7
			target: self
			selector: #browseAllImplementorsOf:
			args: (OrderedCollection with: aMethod)