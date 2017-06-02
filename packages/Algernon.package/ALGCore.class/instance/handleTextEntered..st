event handling
handleTextEntered: event

	self textField keyStroke: event.
	self lastInputTime: TimeStamp now.
	self resetFilteringThreshold.
	self isStepping ifFalse: [self startStepping].
	self grabFocus: self activeHand