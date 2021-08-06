actions
createAction

	^ ALGAction
		withName: 'do'
		rank: 1
		target: self
		selector: self typeObject value
		args: #()