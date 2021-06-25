helpers
dispatchMouseEvent: aType atPosition: aPosition 
self algInstance processEvent:
	(MouseButtonEvent new
		setType: aType
		position: aPosition
		which: 4
		buttons: 4
		hand: self algInstance world activeHand
		stamp: nil)