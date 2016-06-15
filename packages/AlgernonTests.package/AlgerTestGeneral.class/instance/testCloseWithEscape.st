testing
testCloseWithEscape
	| closeAlgernonEvent |
	closeAlgernonEvent := AlgerTestKeyboardEventFake new 
										keyString: '<escape>';
										isKeyUp: false.
	Algernon open.
	Algernon currentInstance handleEvent: closeAlgernonEvent.
	self deny: Algernon currentInstance active.