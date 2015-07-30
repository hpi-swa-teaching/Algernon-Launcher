actions
createActionDo

	^ ALGAction
			withName: 'do'
			rank: 2
			target: self
			selector: #doit
			args: OrderedCollection new