testing keybindings
testCloseWithEscape
	| closeAlgernonEvent |
	closeAlgernonEvent := ALGFakeKeyboardEvent new keyString: '<escape>';
				isKeyUp: true.
	self algInstance activate.
	self algInstance textField inputfield handleEvent: closeAlgernonEvent.
	self deny: self algInstance active