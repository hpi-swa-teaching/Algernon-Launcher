actions
createActionBrowseNewFor: aMethod

	^ ALGAction
			withName: 'browse (new)'
			rank: 9
			target: self
			selector: #openInNewBrowser:
			args: (OrderedCollection with: aMethod)