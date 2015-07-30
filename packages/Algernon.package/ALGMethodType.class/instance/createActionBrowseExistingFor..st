actions
createActionBrowseExistingFor: aMethod

	^ ALGAction
			withName: 'browse (existing)'
			rank: 10
			target: self
			selector: #openInExistingBrowser:
			args: (OrderedCollection with: aMethod)