testing
testKeyboardInput
	| keyboardEvent |
	keyboardEvent := ALGFakeKeyboardEvent new keyString: 'A';
				 isKeyUp: true.
	algerInstance activate.
	algerInstance keyStroke: keyboardEvent.
	self assert: self algerInstance query = 'A'