as yet unclassified
createActionRun

	^ ALGAction
			withName: 'run' 
			rank: 10
			target: self
			selector:#runMenuItem
			args: #()