event handling
mouseDown: evt

	^ (self fullContainsPoint: evt position)
		ifTrue: [super mouseDown: evt]
		ifFalse: [self deactivate: evt hand]
