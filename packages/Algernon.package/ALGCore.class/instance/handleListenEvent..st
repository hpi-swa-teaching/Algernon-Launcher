events-processing
handleListenEvent: anEvent
	| isActivationString |
	isActivationString := (anEvent keyString = self class activationString) and: anEvent isKeyUp.
	
	isActivationString ifTrue: [
		self handleActivationKeyEvent: anEvent ]