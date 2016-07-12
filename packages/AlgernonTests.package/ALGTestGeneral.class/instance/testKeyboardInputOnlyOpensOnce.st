testing
testKeyboardInputOnlyOpensOnce
	| openAlgernonEvent |
	openAlgernonEvent := ALGTestKeyboardEventFake new 
										keyString: ALGCore activationString;
										isKeyUp: false.
	algerstance deactivate.
	algerstance handleListenEvent: openAlgernonEvent.
	self assert: algerstance active.
	algerstance handleListenEvent: openAlgernonEvent.
	self assert: algerstance active