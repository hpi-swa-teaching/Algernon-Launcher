testing
testAlgernonChangeShortcut
	| currentActivationString currentActivationStringDoubleclick |
	currentActivationString := ALGCore activationString.
	currentActivationStringDoubleclick := ALGCore activationStringDoubleclick.
	self shortcuts
		do: [:shortcut | self testAlgernonChangeShortcut: shortcut requiresDoubleclick: true. 
						self testAlgernonChangeShortcut: shortcut requiresDoubleclick: false].
	self testAlgernonChangeShortcut: currentActivationString requiresDoubleclick: currentActivationStringDoubleclick