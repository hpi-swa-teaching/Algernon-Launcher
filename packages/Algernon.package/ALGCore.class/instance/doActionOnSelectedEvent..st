events-processing
doActionOnSelectedEvent: evt 
	self active
		ifTrue: [self itemList doActionOnSelectedItem: evt ]