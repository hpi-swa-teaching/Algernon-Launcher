actions
createActionOpen

	^ ALGAction
			withName: 'open' 
			rank: 10
			target: self
			selector:#openLink
			args: #()