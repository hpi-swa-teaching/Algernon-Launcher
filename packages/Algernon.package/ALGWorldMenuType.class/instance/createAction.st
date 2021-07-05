actions
createAction

	self typeObject hasEntries ifTrue: [ ^ self createActionNamed: 'entries' ].
	
	^ self createActionNamed: (self class menuActionMapping 
			at: self typeObject category
			ifAbsent: [ 'open' ])
	