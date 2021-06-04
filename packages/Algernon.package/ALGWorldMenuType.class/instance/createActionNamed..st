actions
createActionNamed: aString

	^ ALGAction
			withName: aString
			rank: 10
			target: self
			selector:#openMenuItem
			args: #()