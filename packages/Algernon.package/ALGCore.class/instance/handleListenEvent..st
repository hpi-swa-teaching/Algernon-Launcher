events-processing
handleListenEvent: anEvent
	| isActivationString shouldToggle timestamp difference |
	timestamp := TimeStamp current time asNanoSeconds.
	difference := timestamp - (lastHalfActivationTimestamp ifNil: [0]).
	isActivationString := (anEvent keyString = self class activationString).
	shouldToggle := (isActivationString and: [self receivedActivation not]).
	shouldToggle ifTrue: [
		(self class activationStringDoubleclick not or: [0 <= difference and: [difference <= self class maxHalfClickDeviation]]) ifTrue: [
			self toggleVisibility: anEvent.
			self receivedActivation: true].
		lastHalfActivationTimestamp := timestamp].
	(self receivedActivation and: [anEvent isKeyUp]) ifTrue: [self receivedActivation: false]