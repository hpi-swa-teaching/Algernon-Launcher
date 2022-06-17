actions
createActionOpenInGitBrowser

	^ ALGAction
			withName: 'open'
			rank: 5
			target: self
			selector: #openGitBrowser
			args: OrderedCollection new

	