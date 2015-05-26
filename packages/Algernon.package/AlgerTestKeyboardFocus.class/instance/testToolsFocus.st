running
testToolsFocus
	"Make sure launched tools have keyboard focus."
	| toolName systemWindows |
	toolName := 'Test Runner'.
	algerstance textField contents: toolName.
	algerstance updateItemList;
				toggleSubmenuOnSelectedItem: nil;
				doActionOnSelectedEvent: nil.
	systemWindows := World submorphs select: [ :aMorph |
		aMorph isKindOf: PluggableSystemWindow ].
	toolWindow := systemWindows detect: [ :aMorph | aMorph label = toolName ] ifNone: [ self fail ].
	self assert: toolWindow hasKeyboardFocus.