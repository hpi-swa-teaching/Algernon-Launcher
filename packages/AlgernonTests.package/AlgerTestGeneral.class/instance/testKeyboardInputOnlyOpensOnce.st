testing
testKeyboardInputOnlyOpensOnce
	| openAlgernonEvent |
	openAlgernonEvent := AlgerTestKeyboardEventFake new 
										keyString: ALGCore activationString;
										isKeyUp: false.
	algerstance deactivate.
	algerstance handleListenEvent: openAlgernonEvent.
	self assert: algerstance active.
	algerstance handleListenEvent: openAlgernonEvent.
	self assert: algerstance active