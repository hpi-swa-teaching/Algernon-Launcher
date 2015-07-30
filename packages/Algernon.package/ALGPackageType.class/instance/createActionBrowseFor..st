actions
createActionBrowseFor: aPackage

	^ ALGAction
			withName: 'browse'
			rank: 9
			target: self
			selector: #openPackage:
			args: (OrderedCollection with: aPackage)