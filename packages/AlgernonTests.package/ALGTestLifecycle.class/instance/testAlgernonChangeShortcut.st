testing
testAlgernonChangeShortcut
	| currentActivationString currentActivationStringDoubleclick |
	currentActivationString := ALGCore activationString.
	currentActivationStringDoubleclick := ALGCore activationStringDoubleclick.
	self shortcuts
		do: [:shortcut | 
				self changeAlgernonShortcut: shortcut requiresDoubleClick: true.
				self testAlgernonShortcut: shortcut requiresDoubleclick: true.
				self changeAlgernonShortcut: shortcut requiresDoubleClick: false.
				self testAlgernonShortcut: shortcut requiresDoubleclick: false ].
	self changeAlgernonShortcut: currentActivationString requiresDoubleClick: currentActivationStringDoubleclick.
	self testAlgernonShortcut: currentActivationString requiresDoubleclick: currentActivationStringDoubleclick