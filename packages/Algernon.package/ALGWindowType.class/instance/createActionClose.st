actions
createActionClose

	^ ALGAction
			withName: 'close' 
			rank: 10
			target: self
			selector:#closeWindow
			args: #()