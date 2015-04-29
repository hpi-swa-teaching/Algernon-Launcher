event handling
handleListenEvent: anEvent

	(anEvent isKeystroke and: [(anEvent keyString = self class activationString)])
		ifTrue: [self toggleVisibility: anEvent]