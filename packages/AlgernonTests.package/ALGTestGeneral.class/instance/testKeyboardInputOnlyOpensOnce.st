testing
testKeyboardInputOnlyOpensOnce
	| openAlgernonEvent |
	openAlgernonEvent := ALGFakeKeyboardEvent new 
										keyString: ALGCore activationString;
										isKeyUp: false.
	algerInstance deactivate.
	algerInstance handleListenEvent: openAlgernonEvent.
	self assert: algerInstance active.
	algerInstance handleListenEvent: openAlgernonEvent.
	self assert: algerInstance active