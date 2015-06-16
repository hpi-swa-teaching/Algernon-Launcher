visibility
toggleVisibility: anEvent

	self active
		ifTrue: [self deactivate: anEvent hand]
		ifFalse: [self activate: anEvent hand]
