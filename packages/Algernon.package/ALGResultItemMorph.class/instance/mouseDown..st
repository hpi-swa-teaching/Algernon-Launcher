event handling
mouseDown: evt
	self isTitle ifFalse: [self owner doActionOnSelectedItem: evt].
	