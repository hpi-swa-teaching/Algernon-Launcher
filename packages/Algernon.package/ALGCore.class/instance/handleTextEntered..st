events-processing
handleTextEntered: event

	self textField normalKeyStroke: event.
	self resetFilteringThreshold.
	self isStepping ifFalse: [self startStepping].
	self grabFocus: self activeHand