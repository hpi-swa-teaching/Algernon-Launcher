actions
createActionSearch

	^ (ALGAction
			withName: 'search'
			rank: 0
			target: self
			selector: #tabIn
			args: OrderedCollection new)
			hidden: true;
			keepOpen: true;
			yourself