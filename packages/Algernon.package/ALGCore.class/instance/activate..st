visibility
activate: hand

	self active ifTrue: [^ self].
	self
		active: true;
		reset;
		startStepping.
	self grabFocus: self activeHand.
	self showMorphs
	
