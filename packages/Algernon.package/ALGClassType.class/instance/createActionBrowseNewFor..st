actions
createActionBrowseNewFor: aClass

	^ ALGAction
			withName: 'browse (new)' 
			rank: 9
			target: self
			selector: #openInNewBrowser: 
			args: (OrderedCollection with: aClass)	