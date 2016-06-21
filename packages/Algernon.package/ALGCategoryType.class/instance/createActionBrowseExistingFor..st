actions
createActionBrowseExistingFor: aCategory

	^ ALGAction
			withName: 'browse (existing)' 
			rank: 4
			target: self
			selector: #openInExistingBrowser: 
			args: (OrderedCollection with: aCategory)	