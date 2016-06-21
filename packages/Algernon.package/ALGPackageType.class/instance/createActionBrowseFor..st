actions
createActionBrowseFor: aPackage

	^ ALGAction
			withName: 'browse'
			rank: 10
			target: self
			selector: #openPackage:
			args: (OrderedCollection with: aPackage)