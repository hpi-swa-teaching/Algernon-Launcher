actions
createActionBrowseNewFor: aCategory

	^ ALGAction
			withName: 'browse (new)' 
			rank: 4
			target: self
			selector: #openInNewBrowser: 
			args: (OrderedCollection with: aCategory)