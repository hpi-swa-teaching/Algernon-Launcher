actions
createActionRefresh

	^ ALGAction
			withName: 'refresh'
			rank: 1
			target: self
			selector: #refresh
			args: OrderedCollection new