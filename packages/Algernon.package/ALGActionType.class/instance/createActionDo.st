actions
createActionDo

	^ ALGAction
			withName: 'do'
			rank: 1
			target: self
			selector: #do
			args: OrderedCollection new