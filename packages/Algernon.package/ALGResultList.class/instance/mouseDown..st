event handling
mouseDown: evt 
	self mouseMove: evt.
	self controller deactivate: evt hand.
	self doActionOnSelectedItem: evt