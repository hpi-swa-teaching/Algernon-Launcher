testing
testAlgernonChangeShortcut: shortcut

	ALGCore activationString: shortcut shallowCopy.
	self deny: Algernon currentInstance isNil.
	Algernon currentInstance handleListenEvent: (ALGFakeKeyboardEvent new 
																	keyString: shortcut shallowCopy;
																	isKeyUp: false).
	self assert: Algernon currentInstance active.
	Algernon currentInstance handleListenEvent: (ALGFakeKeyboardEvent new 
																	keyString: shortcut shallowCopy;
																	isKeyUp: true).
	Algernon close		