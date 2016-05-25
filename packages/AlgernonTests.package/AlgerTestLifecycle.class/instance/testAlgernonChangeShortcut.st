testing
testAlgernonChangeShortcut

	|currentActivationString|
	currentActivationString := ALGCore activationString.
	
	self deny: Algernon currentInstance isNil.
	
	self shortcuts do: [:shortcut | self testAlgernonChangeShortcut: shortcut].
	
	ALGCore activationString: currentActivationString.

	self testAlgernonChangeShortcut: currentActivationString