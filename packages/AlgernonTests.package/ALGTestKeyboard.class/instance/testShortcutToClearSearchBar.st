testing
testShortcutToClearSearchBar
	| keyboardEvent |
	keyboardEvent := ALGFakeKeyboardEvent new keyString: '<Ctrl-delete>'.
	self runQuery: 'example string'.
	self algInstance keyStroke: keyboardEvent.
	self assert: self algInstance query equals: ''
	
	