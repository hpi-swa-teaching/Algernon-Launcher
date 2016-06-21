actions
createActionBrowseNewFor: aCategory

	^ ALGAction
			withName: 'browse (new)' 
			rank: 5
			target: self
			selector: #openInNewBrowser: 
			args: (OrderedCollection with: aCategory)