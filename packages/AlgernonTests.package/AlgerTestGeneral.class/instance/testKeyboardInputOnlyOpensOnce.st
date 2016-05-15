testing
testKeyboardInputOnlyOpensOnce
	| openAlgernonEvent |
	openAlgernonEvent := KeyboardEvent new
		setType: #keystroke
		buttons: 72
		position: 600@610
		keyValue: 32
		hand: ActiveHand
		stamp: 0.
	algerstance deactivate.
	algerstance handleListenEvent: openAlgernonEvent.
	self assert: algerstance active.
	algerstance handleListenEvent: openAlgernonEvent.
	self assert: algerstance active