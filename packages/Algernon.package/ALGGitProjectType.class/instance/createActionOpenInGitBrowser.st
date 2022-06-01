actions
createActionOpenInGitBrowser

	^ ALGAction
			withName: 'Open Git Browser'
			rank: 5
			target: self
			selector: #openGitBrowser
			args: OrderedCollection new

	