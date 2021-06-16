events-processing
handleListenEvent: anEvent
	| isActivationString |
	isActivationString := (anEvent keyString = self class activationString) and: [anEvent isKeyDown].
	
	
	isActivationString ifTrue: [
		self handleActivationKeyEvent: anEvent ]