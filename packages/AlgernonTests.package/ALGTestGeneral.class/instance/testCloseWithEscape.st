testing
testCloseWithEscape
	| closeAlgernonEvent |
	closeAlgernonEvent := ALGFakeKeyboardEvent new keyString: '<escape>';
				isKeyUp: false.
	self algerInstance activate.
	self algerInstance textField handleEvent: closeAlgernonEvent.
	self deny: Algernon currentInstance active