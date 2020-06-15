testing
testKeyboardInput
	| keyboardEvent |
	keyboardEvent := ALGFakeKeyboardEvent new keyString: 'A';
				 keyValue: 65;
				 buttons: 0;
				 isKeyUp: true.
	algerInstance activate.
	algerInstance keyStroke: keyboardEvent.
	algerInstance keyStroke: keyboardEvent.
	self assert: self algerInstance query = 'AA'