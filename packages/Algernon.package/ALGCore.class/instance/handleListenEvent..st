event handling
handleListenEvent: anEvent

	(anEvent isKeystroke & (anEvent keyString = self class activationString))
		ifTrue: [ self toggleVisibility: anEvent ]