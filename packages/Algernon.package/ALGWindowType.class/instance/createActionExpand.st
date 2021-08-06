actions
createActionExpand

	^ ALGAction
			withName: 'expand' 
			rank: 9
			target: self
			selector:#expandWindow
			args: #()