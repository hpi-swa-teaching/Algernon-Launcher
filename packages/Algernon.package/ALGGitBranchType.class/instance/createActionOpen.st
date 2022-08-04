actions
createActionOpen

	^ ALGAction
			withName: 'open'
			rank: 2
			target: ToolBuilder
			selector: #open:
			args: (OrderedCollection with: self getGitBrowser)