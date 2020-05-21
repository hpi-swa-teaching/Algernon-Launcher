event handling
doActionOnSelectedEvent: evt

	self active ifTrue: [
		 evt ifNotNil: [self deactivate: evt hand].
		self itemList doActionOnSelectedItem: evt.]