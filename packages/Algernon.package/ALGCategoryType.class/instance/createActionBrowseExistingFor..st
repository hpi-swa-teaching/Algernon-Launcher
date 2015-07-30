actions
createActionBrowseExistingFor: aCategory

	^ ALGAction
			withName: 'browse (existing)' 
			rank: 5
			target: self
			selector: #openInExistingBrowser: 
			args: (OrderedCollection with: aCategory)	