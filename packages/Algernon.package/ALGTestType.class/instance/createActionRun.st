actions
createActionRun

	^ ALGAction
			withName: 'run' 
			rank: 10
			target: self
			selector:#runTestSuite
			args: #()