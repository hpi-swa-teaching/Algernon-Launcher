actions
createActionContract

	^ ALGAction
			withName: 'contract' 
			rank: 8
			target: self
			selector:#contractWindow
			args: #()