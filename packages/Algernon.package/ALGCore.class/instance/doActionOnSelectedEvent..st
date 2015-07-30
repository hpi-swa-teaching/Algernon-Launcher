event handling
doActionOnSelectedEvent: evt

	self active ifTrue: [ self itemList doActionOnSelectedItem: evt.
						self deactivate: evt hand ]