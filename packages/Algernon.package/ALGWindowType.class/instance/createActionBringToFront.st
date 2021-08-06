actions
createActionBringToFront

	^ ALGAction
			withName: 'front' 
			rank: 11
			target: self
			selector:#bringWindowToFront
			args: #()