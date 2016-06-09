testing
testMouseUpPropagatesFocus

	| event |
	event :=  MouseButtonEvent new
		setType: #mouseDown
		position: 5@5
		which: 4 "red"
		buttons: 4 "red"
		hand: background currentHand
		stamp: nil.

	background mouseUp: event.
	self assert: controller receivedKeyboardFocus.
	self assert: controller focus