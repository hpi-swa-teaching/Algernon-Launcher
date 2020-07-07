testing
testCloseWithEscape
	| closeAlgernonEvent |
	closeAlgernonEvent := ALGFakeKeyboardEvent new keyString: '<escape>';
				isKeyUp: false.
	algerInstance activate.
	 algerInstance textField handleEvent: closeAlgernonEvent.
	self deny: Algernon currentInstance active