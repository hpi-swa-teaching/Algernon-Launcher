actions
createActionFileoutFor: aCategory

	^ ALGAction
			withName: 'fileOut' 
			rank: 3
			target: SystemOrganization
			selector: #fileOutCategory: 
			args: (OrderedCollection with: aCategory)