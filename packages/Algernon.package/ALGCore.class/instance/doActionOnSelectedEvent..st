events-processing
doActionOnSelectedEvent: evt

	self active ifTrue: [
		 evt ifNotNil: [self deactivate: evt hand].
		self itemList doActionOnSelectedItem: evt.]