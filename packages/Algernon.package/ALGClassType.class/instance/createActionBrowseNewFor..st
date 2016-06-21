actions
createActionBrowseNewFor: aClass

	^ ALGAction
			withName: 'browse (new)' 
			rank: 10
			target: self
			selector: #openInNewBrowser: 
			args: (OrderedCollection with: aClass)	