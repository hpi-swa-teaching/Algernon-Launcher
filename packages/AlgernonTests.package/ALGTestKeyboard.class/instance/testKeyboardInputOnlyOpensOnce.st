testing
testKeyboardInputOnlyOpensOnce
	| openAlgEvtDown openAlgEvtUp doubleclickState |
	openAlgEvtDown := ALGFakeKeyboardEvent new  keyString: ALGCore activationString;
										isKeyUp: false.
	openAlgEvtUp := ALGFakeKeyboardEvent new keyString: ALGCore activationString;
										isKeyUp: true.
	doubleclickState := ALGCore activationStringDoubleclick.
	
	self algInstance deactivate.
	ALGCore activationStringDoubleclick: false.
	self assertAlgIsOpen: true after: openAlgEvtUp.
	self assertAlgIsOpen: true after: openAlgEvtDown.
	self assertAlgIsOpen: false after: openAlgEvtUp.
	self assertAlgIsOpen: false after: openAlgEvtDown.
	ALGCore activationStringDoubleclick: doubleclickState