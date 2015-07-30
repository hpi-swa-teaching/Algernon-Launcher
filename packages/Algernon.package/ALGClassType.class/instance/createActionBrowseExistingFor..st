actions
createActionBrowseExistingFor: aClass

	^ ALGAction
			withName: 'browse (existing)' 
			rank: 10
			target: self
			selector: #openInExistingBrowser: 
			args: (OrderedCollection with: aClass)	