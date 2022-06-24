actions
createActionOpenInGitBrowser

	^ ALGAction
			withName: 'open'
			rank: 5
			target: ToolBuilder
			selector: #open:
			args: (OrderedCollection with: self getGitBrowser)

	