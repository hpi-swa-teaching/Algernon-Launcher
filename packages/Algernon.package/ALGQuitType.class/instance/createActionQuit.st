as yet unclassified
createActionQuit

	^ ALGAction
			withName: 'Quit Squeak'
			rank: 1
			target: self
			selector: #quitSqueak
			args: OrderedCollection new