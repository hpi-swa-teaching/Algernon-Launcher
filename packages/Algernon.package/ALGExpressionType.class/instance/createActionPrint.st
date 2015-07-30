actions
createActionPrint

	^ ALGAction
			withName: 'print'
			rank: 3
			target: self
			selector: #printit
			args: OrderedCollection new