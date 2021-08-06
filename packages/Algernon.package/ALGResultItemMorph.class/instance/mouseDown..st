event handling
mouseDown: evt
	self isTitle ifFalse: [self menuMorph doActionOnSelectedItem: evt].
	