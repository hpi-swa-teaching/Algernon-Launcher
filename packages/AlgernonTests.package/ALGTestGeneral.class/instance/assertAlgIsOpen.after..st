testing
assertAlgIsOpen: aBoolean after: anEvent
	self algInstance handleListenEvent: anEvent.
	self assert: self algInstance active = aBoolean. 