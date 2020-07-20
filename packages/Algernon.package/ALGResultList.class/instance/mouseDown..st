event handling
mouseDown: evt 
	self controller deactivate: evt hand.
	self doActionOnSelectedItem: evt