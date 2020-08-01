singleton
defaultKeyStrokeHandler
	^ [:event :morph | morph active
		ifTrue: [morph handleTextEntered: event]]