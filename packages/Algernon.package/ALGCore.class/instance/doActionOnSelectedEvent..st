event handling
doActionOnSelectedEvent: evt

	self active ifTrue: [ self itemList doActionOnSelectedItem: evt.
						evt ifNotNil: [self deactivate: evt hand] ]