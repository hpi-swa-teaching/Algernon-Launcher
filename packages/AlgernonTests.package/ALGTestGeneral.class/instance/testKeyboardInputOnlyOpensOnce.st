testing
testKeyboardInputOnlyOpensOnce
	| openAlgernonEvent |
	openAlgernonEvent := ALGFakeKeyboardEvent new 
										keyString: ALGCore activationString;
										isKeyUp: false.
	self algerInstance deactivate.
	self algerInstance handleListenEvent: openAlgernonEvent.
	self assert: self algerInstance active.
	self algerInstance handleListenEvent: openAlgernonEvent.
	self assert:self  algerInstance active