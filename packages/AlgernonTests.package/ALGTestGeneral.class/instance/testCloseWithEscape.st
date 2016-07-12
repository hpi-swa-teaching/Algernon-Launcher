testing
testCloseWithEscape
	| closeAlgernonEvent |
	closeAlgernonEvent := ALGTestKeyboardEventFake new 
										keyString: '<escape>';
										isKeyUp: false.
	Algernon open.
	Algernon currentInstance handleEvent: closeAlgernonEvent.
	self deny: Algernon currentInstance active.