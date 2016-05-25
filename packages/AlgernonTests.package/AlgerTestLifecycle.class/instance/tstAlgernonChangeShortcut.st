testing
tstAlgernonChangeShortcut

	|currentActivationString|
	currentActivationString := ALGCore activationString.
	
	self shortcuts do: [ :keyString |
	ALGCore activationString: '<Cmd-d>'.
	
	self deny: Algernon currentInstance isNil.
	
	Algernon currentInstance handleListenEvent: (AlgerTestKeyboardEventMock new keyString: currentActivationString).
	
	self assert: Algernon currentInstance active.
	].
	
	ALGCore activationString: currentActivationString.
	Algernon close