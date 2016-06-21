actions
createActionBrowseNewFor: aMethod

	^ ALGAction
			withName: 'browse (new)'
			rank: 10
			target: self
			selector: #openInNewBrowser:
			args: (OrderedCollection with: aMethod)