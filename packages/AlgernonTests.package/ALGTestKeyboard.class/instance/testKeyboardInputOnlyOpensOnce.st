testing
testKeyboardInputOnlyOpensOnce
	| openAlgEvtDown openAlgEvtUp |
	openAlgEvtDown := ALGFakeKeyboardEvent new  keyString: ALGCore activationString;
										isKeyUp: false.
	openAlgEvtUp := ALGFakeKeyboardEvent new keyString: ALGCore activationString;
										isKeyUp: true.
	self algInstance deactivate.
	self assertAlgIsOpen: true after: openAlgEvtDown.
	self assertAlgIsOpen: true after: openAlgEvtUp.
	self assertAlgIsOpen: false after: openAlgEvtDown.
	self assertAlgIsOpen: false after: openAlgEvtUp.