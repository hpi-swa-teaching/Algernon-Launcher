helpers
dispatchMouseEvent: aType atPosition: aPosition 
	| hand event |
	hand := self algInstance world activeHand.
	event := MouseButtonEvent new
				setType: aType
				position: aPosition
				which: 4
				buttons: 4
				hand: hand
				stamp: nil.
	aType = #mouseDown
		ifTrue: [self algInstance mouseDown: event].
	aType = #mouseMove
		ifTrue: [self algInstance mouseMove: event]