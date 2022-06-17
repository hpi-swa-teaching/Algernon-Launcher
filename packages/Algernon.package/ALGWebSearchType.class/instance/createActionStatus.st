actions
createActionStatus

	^ ALGWebAction
			withName: 'Loading...'
			rank: 0
			target: self
			selector: #refresh
			args: OrderedCollection new