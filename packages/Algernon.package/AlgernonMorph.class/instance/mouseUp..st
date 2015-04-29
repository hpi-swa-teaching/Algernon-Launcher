event handling
mouseUp: evt

	^ (self fullContainsPoint: evt position)
		ifTrue: [evt hand newMouseFocus: self]
		ifFalse: [self deactivate: evt hand]
	