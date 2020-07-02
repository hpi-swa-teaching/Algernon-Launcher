testing
testAlgernonChangeShortcut: shortcut 
	ALGCore activationString: shortcut shallowCopy.
	self algerInstance deactivate: nil.
	self deny: self algerInstance active.
	self algerInstance handleListenEvent: (ALGFakeKeyboardEvent new keyString: shortcut shallowCopy;
			 isKeyUp: true).
	self assert: self algerInstance active.
	self algerInstance handleListenEvent: (ALGFakeKeyboardEvent new keyString: shortcut shallowCopy;
			 isKeyUp: true).
	self algerInstance deactivate: nil