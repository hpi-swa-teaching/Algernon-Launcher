helpers
dispatchMouseEvent: aType atPosition: aPosition 
	| event |
	event := MouseButtonEvent new setType: aType
				position: aPosition
				which: 4
				buttons: 4
				hand: (self algInstance world activeHand)
				stamp: nil.
	aType = #mouseDown ifTrue: [self algInstance mouseDown: event].
	aType = #mouseMove ifTrue: [self algInstance mouseMove: event]