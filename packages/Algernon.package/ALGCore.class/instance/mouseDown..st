event handling
mouseDown: evt

	^ (textField fullContainsPoint: evt position)
		ifTrue: [super mouseDown: evt]
		ifFalse: [self deactivate: evt hand]