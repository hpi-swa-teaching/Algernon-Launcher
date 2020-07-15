actions
createActionQuit

	^ ALGAction
			withName: 'run'
			rank: 1
			target: self
			selector: #doCommand
			args: OrderedCollection new