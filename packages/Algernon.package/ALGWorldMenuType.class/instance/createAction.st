actions
createAction

	^ self createActionNamed: (self class menuActionMapping 
			at: self typeObject name
			ifAbsent: [ 'open' ])
	