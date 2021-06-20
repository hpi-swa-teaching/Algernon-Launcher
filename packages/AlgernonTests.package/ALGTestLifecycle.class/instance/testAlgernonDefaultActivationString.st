testing
testAlgernonDefaultActivationString
	| currentActivationString currentActivationStringDoubleclick |
	currentActivationString := ALGCore activationString.
	currentActivationStringDoubleclick := ALGCore activationStringDoubleclick.
	
	self changeAlgernonShortcut: nil requiresDoubleClick: currentActivationStringDoubleclick.
	self testAlgernonShortcut: ALGCore activationString requiresDoubleclick: currentActivationStringDoubleclick.

	"Restore original state"
	self changeAlgernonShortcut: currentActivationString requiresDoubleClick: currentActivationStringDoubleclick.