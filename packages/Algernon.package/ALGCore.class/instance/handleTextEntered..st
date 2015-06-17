event handling
handleTextEntered: event
	
	textField keyStroke: event.
	(self lastInputTime)
		ifNil: [ self updateItemList ].
	self lastInputTime: TimeStamp now.
	(self isStepping)
		ifFalse: [ self startStepping ].
	self activeHand newKeyboardFocus: self.
	self activeHand newMouseFocus: self.