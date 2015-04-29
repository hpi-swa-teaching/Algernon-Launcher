event handling
handleTextEntered: event

	textField keyStroke: event.
	self updateItemList.
	self activeHand newMouseFocus:self.