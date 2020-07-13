events-processing
keyStroke: evt 

	^ (self class keyBindings 
		at: evt keyString
		ifAbsent: [[ :event :morph | morph active ifTrue: [ morph handleTextEntered: event ]]])
	value: evt value: self