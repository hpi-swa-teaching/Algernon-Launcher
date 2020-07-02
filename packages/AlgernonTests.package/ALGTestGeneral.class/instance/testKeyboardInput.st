testing
testKeyboardInput
	| keyboardEvent |
	keyboardEvent := ALGFakeKeyboardEvent new keyString: 'A';
				 keyValue: 65;
				 buttons: 0;
				 isKeyUp: true.
	self algerInstance activate.
	self algerInstance keyStroke: keyboardEvent.
	self algerInstance keyStroke: keyboardEvent.
	self assert: self algerInstance query = 'AA'