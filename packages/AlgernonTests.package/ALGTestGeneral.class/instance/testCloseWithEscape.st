testing
testCloseWithEscape
	| closeAlgernonEvent |
	closeAlgernonEvent := ALGFakeKeyboardEvent new keyString: '<escape>';
				isKeyUp: true.
	self algerInstance activate.
	self algerInstance textField handleEvent: closeAlgernonEvent.
	self deny: self algerInstance active