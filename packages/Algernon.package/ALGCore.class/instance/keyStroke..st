events-processing
keyStroke: evt 
	^ (self class keyBindings at: evt keyString ifAbsent: self class defaultKeyStrokeHandler)
		value: evt
		value: self