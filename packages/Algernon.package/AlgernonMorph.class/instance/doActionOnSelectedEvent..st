actions
doActionOnSelectedEvent: evt
	self active ifTrue: [
		itemList ifNotNil:[itemList doActionOnSelectedItem: evt].
		self deactivate: evt hand]