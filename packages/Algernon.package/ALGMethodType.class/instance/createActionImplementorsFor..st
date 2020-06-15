actions
createActionImplementorsFor: aMethod

	^ ALGAction
			withName: 'implementors of'
			rank: 8
			target: self
			selector: #browseAllImplementorsOf:
			args: (OrderedCollection with: aMethod)