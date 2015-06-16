event handling
handleTextEntered: event
	
	textField keyStroke: event.
	self updateItemList.
	self activeHand newKeyboardFocus: self.
	self activeHand newMouseFocus:self.