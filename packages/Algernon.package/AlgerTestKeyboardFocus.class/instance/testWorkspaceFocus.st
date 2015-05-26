running
testWorkspaceFocus
	"Make sure launched tools have keyboard focus."
	| toolName systemWindows |
	toolName := 'Workspace'.
	algerstance textField contents: toolName.
	algerstance updateItemList;
				toggleSubmenuOnSelectedItem: nil;
				doActionOnSelectedEvent: nil.
	systemWindows := World submorphs select: [ :aMorph |
		aMorph isKindOf: PluggableSystemWindow ].
	toolWindow := systemWindows detect: [ :aMorph | aMorph label = toolName ] ifNone: [ self fail ].
	self assert: toolWindow hasKeyboardFocus.

	"Enter some keyboard events here"