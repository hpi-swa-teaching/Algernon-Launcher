actions
createActionPush

	^ ALGAction
			withName: 'push'
			rank: 3
			target: (self getGitBrowser)
			selector: #actionPush
			args: #()

	