actions
createActionDo

	^ ALGAction
			withName: 'do'
			rank: 1
			target: self action
			selector: #do
			args: OrderedCollection new