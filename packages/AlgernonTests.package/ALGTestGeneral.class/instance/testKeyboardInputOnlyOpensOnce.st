testing
testKeyboardInputOnlyOpensOnce
	| openAlgernonEventDown openAlgernonEventUp |
	openAlgernonEventDown := ALGFakeKeyboardEvent new 
										keyString: ALGCore activationString;
										isKeyUp: false.
	openAlgernonEventUp := ALGFakeKeyboardEvent new 
										keyString: ALGCore activationString;
										isKeyUp: true.
	self algerInstance deactivate.
	self algerInstance handleListenEvent: openAlgernonEventDown.
	self assert: self algerInstance active.
	self algerInstance handleListenEvent: openAlgernonEventUp.
	self assert:self  algerInstance active.
	self algerInstance handleListenEvent: openAlgernonEventDown.
	self deny:self  algerInstance active.
	self algerInstance handleListenEvent: openAlgernonEventUp.
	self deny:self  algerInstance active.