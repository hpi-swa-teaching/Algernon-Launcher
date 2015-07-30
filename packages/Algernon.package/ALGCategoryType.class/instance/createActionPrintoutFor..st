actions
createActionPrintoutFor: aCategory

	^ ALGAction
			withName: 'printOut' 
			rank: 2
			target: self
			selector: #printOutCategory: 
			args: (OrderedCollection with: aCategory)