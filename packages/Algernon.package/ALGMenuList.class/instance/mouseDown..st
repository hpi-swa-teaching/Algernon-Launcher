events
mouseDown: evt
	((self fullContainsPoint: evt position)  or:[self algernon fullContainsPoint: evt position]) 
		ifFalse:[self algernon deactivate.].