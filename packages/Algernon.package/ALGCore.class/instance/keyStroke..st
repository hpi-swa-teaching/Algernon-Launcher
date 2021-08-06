events-processing
keyStroke: evt 

	self ifShouldHandleAsQuickAccess: evt do: [ ^ self handleAsQuickAccess: evt ].
	^ (self class keyBindings at: evt keyString ifAbsent: self class defaultKeyStrokeHandler)
		value: evt
		value: self