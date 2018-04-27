event handling
handleListenEvent: anEvent

	| isActivationString shouldToggle |
	isActivationString := (anEvent keyString = self class activationString).
	shouldToggle := (isActivationString and: [self receivedActivation not]).
	shouldToggle ifTrue: [self toggleVisibility: anEvent. self receivedActivation: true].
	(self receivedActivation and: [anEvent isKeyUp]) ifTrue: [self receivedActivation: false]