testing
testKeyboardInput
	| keyboardEvent |
	keyboardEvent := ALGFakeKeyboardEvent new keyString: 'A';
				 keyValue: 65;
				 buttons: 0;
				 isKeyUp: true.
	self algInstance activate.
	self algInstance keyStroke: keyboardEvent.
	self algInstance keyStroke: keyboardEvent.
	self assert: self algInstance query = 'AA'