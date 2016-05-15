event handling
handleListenEvent: anEvent

	| isActivationString shouldToggle |
	isActivationString := (anEvent keyString = self class activationString).
	shouldToggle := (anEvent isKeystroke & isActivationString & self receivedActivation not).
	shouldToggle ifTrue: [self toggleVisibility: anEvent. self receivedActivation: true].
	self receivedActivation & anEvent isKeyUp ifTrue: [self receivedActivation: false]