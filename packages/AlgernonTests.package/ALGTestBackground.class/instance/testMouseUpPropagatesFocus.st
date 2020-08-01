testing
testMouseUpPropagatesFocus
	background mouseUp: (MouseButtonEvent new
		setType: #mouseDown
		position: 5@5
		which: 4 "red"
		buttons: 4 "red"
		hand: background currentHand
		stamp: nil).
	self assert: controller receivedKeyboardFocus.
	self assert: controller focus