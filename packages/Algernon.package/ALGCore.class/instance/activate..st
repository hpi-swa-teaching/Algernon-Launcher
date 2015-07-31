visibility
activate: hand

	self active ifTrue: [^ self].
	self active: true; reset.
	self grabFocus: self activeHand.
	self showMorphs.
	self openInWorld
	
