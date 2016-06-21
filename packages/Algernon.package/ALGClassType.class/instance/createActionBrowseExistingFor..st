actions
createActionBrowseExistingFor: aClass

	^ ALGAction
			withName: 'browse (existing)' 
			rank: 9
			target: self
			selector: #openInExistingBrowser: 
			args: (OrderedCollection with: aClass)	