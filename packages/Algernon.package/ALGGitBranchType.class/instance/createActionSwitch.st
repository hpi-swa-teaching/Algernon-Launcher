actions
createActionSwitch

	^ ALGAction
			withName: 'switch'
			rank: 3
			target: (self getGitBrowser)
			selector: (self class switchActionSelector)
			args: #()