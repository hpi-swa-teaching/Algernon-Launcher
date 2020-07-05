testing
testCloseWithEscape
	| closeAlgernonEvent |
	closeAlgernonEvent := ALGFakeKeyboardEvent new keyString: '<escape>';
				isKeyUp: true.
	self algInstance activate.
	self algInstance textField handleEvent: closeAlgernonEvent.
	self deny: self algInstance active