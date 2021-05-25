actions
createActionBringToFront

	^ ALGAction
			withName: 'bring to front' 
			rank: 11
			target: self
			selector:#bringWindowToFront
			args: #()