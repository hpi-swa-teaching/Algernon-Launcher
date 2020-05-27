testing
testAlgernonToggleVisibility

	|openAlgernonEvent|
	openAlgernonEvent := ALGFakeKeyboardEvent new 
										keyString: ALGCore activationString;
										isKeyUp: false.										
	algerInstance activate.
	self assert: algerInstance active. 	
	algerInstance toggleVisibility: openAlgernonEvent.
	self deny: algerInstance active.
	algerInstance toggleVisibility: openAlgernonEvent.
	self assert: algerInstance active.
	algerInstance deactivate.
	self deny: algerInstance active.