testing
testAlgernonToggleVisibility

	|openAlgernonEvent|
	openAlgernonEvent := ALGFakeKeyboardEvent new 
										keyString: ALGCore activationString;
										isKeyUp: true.										
	self algerInstance activate.
	self assert: self algerInstance active. 	
	self algerInstance toggleVisibility: openAlgernonEvent.
	self deny: self algerInstance active.
	self algerInstance toggleVisibility: openAlgernonEvent.
	self assert: self algerInstance active.
	self algerInstance deactivate.
	self deny: self algerInstance active.