actions
createActionCommit

	^ ALGAction
			withName: 'commit'
			rank: 3
			target: (self getGitBrowser)
			selector: #actionCommit
			args: #()

	