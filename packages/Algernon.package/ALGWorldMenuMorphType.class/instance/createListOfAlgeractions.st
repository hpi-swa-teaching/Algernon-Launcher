accessing
createListOfAlgeractions
	^ self createSortedListFrom: {ALGAction
			withName: 'open'
			rank: 5
			target: self
			selector: #createMorph:
			args: (OrderedCollection with: self typeObject)}