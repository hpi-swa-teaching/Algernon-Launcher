helpers
dispatchMouseMoveEvent: aType atPosition: aPosition 
	self algInstance
		processEvent: (MouseEvent new
				setType: aType
				position: aPosition
				buttons: 0
				hand: self algInstance world activeHand)