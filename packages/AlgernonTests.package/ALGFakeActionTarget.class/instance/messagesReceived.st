accessing
messagesReceived

	^ messagesReceived ifNil: [messagesReceived := OrderedCollection new]