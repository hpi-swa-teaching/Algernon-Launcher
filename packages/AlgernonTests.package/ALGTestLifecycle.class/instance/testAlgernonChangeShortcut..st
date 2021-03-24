testing
testAlgernonChangeShortcut: shortcut 
	ALGCore setKeyboardBinding: shortcut copy.
	self algInstance deactivate: nil.
	self deny: self algInstance active.
	self algInstance handleListenEvent: (ALGFakeKeyboardEvent new keyString: shortcut shallowCopy;
			 isKeyUp: true).
	self assert: self algInstance active.
	self algInstance handleListenEvent: (ALGFakeKeyboardEvent new keyString: shortcut shallowCopy;
			 isKeyUp: true).
	self algInstance deactivate: nil