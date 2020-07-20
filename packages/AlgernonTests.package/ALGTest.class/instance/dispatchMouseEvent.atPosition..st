helpers
dispatchMouseEvent: aType atPosition: aPosition 
	| hand |
	hand := self algInstance world activeHand.
	self algInstance
		mouseMove: (MouseButtonEvent new
				setType: aType
				position: aPosition
				which: 4
				buttons: 4
				hand: hand
				stamp: nil)