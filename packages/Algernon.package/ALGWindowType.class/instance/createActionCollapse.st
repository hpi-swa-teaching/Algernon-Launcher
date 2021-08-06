actions
createActionCollapse

	^ ALGAction
			withName: 'collapse' 
			rank: 7
			target: self
			selector:#collapseWindow
			args: #()