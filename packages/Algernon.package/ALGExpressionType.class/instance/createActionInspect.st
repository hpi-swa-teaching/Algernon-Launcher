actions
createActionInspect

	^ ALGAction
			withName: 'inspect'
			rank: 1
			target: self
			selector: #inspectit
			args: OrderedCollection new