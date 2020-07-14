as yet unclassified
createActionSave

	^ ALGAction
			withName: self name
			rank: 1
			target: self
			selector: #doCommand
			args: OrderedCollection new