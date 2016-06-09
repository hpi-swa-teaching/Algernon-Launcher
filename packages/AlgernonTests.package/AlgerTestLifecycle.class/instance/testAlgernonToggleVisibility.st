testing
testAlgernonToggleVisibility

	|openAlgernonEvent|
	openAlgernonEvent := AlgerTestKeyboardEventMock new 
										keyString: ALGCore activationString;
										isKeyUp: false.
										
	algerstance activate.
	self assert: algerstance active. 
	
	algerstance toggleVisibility: openAlgernonEvent.
	self assert: algerstance active not. 
	
	algerstance toggleVisibility: openAlgernonEvent.
	self assert: algerstance active.

	algerstance deactivate.
	self assert: algerstance active not. 
	