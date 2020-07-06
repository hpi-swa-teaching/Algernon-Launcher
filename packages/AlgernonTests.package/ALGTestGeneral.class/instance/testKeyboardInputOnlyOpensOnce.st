testing
testKeyboardInputOnlyOpensOnce
	| openAlgernonEventDown openAlgernonEventUp |
	openAlgernonEventDown := ALGFakeKeyboardEvent new 
										keyString: ALGCore activationString;
										isKeyUp: false.
	openAlgernonEventUp := ALGFakeKeyboardEvent new 
										keyString: ALGCore activationString;
										isKeyUp: true.
	self algInstance deactivate.
	self algInstance handleListenEvent: openAlgernonEventDown.
	self assert: self algInstance active.
	self algInstance handleListenEvent: openAlgernonEventUp.
	self assert:self  algInstance active.
	self algInstance handleListenEvent: openAlgernonEventDown.
	self deny:self  algInstance active.
	self algInstance handleListenEvent: openAlgernonEventUp.
	self deny:self  algInstance active.