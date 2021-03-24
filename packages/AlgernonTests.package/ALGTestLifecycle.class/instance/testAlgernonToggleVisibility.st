testing
testAlgernonToggleVisibility
	|openAlgernonEvent|
	openAlgernonEvent := ALGFakeKeyboardEvent new 
										keyString: ALGCore activationString;
										isKeyUp: true.										
	self algInstance activate.
	self assert: self algInstance active. 	
	self algInstance toggleVisibility: openAlgernonEvent.
	self deny: self algInstance active.
	self algInstance toggleVisibility: openAlgernonEvent.
	self assert: self algInstance active.
	self algInstance deactivate.
	self deny: self algInstance active.