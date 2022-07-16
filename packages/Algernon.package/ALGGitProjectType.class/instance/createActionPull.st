actions
createActionPull

	^ ALGAction
			withName: 'pull'
			rank: 3
			target: (self getGitBrowser)
			selector: #actionPull
			args: #()

	