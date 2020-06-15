testing
testCloseWithEscape
	| closeAlgernonEvent |
	closeAlgernonEvent := ALGFakeKeyboardEvent new keyString: '<escape>';
				isKeyUp: false.
	Algernon open.
	Algernon currentInstance textField handleEvent: closeAlgernonEvent.
	self deny: Algernon currentInstance active