actions
doActionOnSelectedEvent: evt
	self active ifTrue: [
		itemList ifNotNil:[itemList doActionOnSelectedItem: evt].
		evt ifNotNil: [self deactivate: evt hand]]