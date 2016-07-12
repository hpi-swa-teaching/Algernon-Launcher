testing
testAlgernonToggleVisibility

	|openAlgernonEvent|
	openAlgernonEvent := ALGFakeKeyboardEvent new 
										keyString: ALGCore activationString;
										isKeyUp: false.										
	algerstance activate.
	self assert: algerstance active. 	
	algerstance toggleVisibility: openAlgernonEvent.
	self deny: algerstance active.
	algerstance toggleVisibility: openAlgernonEvent.
	self assert: algerstance active.
	algerstance deactivate.
	self deny: algerstance active.