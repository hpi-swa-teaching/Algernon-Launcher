testing
testAlgernonChangeShortcut
	| currentActivationString |
	currentActivationString := ALGCore activationString.
	self shortcuts
		do: [:shortcut | self testAlgernonChangeShortcut: shortcut].
	self testAlgernonChangeShortcut: currentActivationString