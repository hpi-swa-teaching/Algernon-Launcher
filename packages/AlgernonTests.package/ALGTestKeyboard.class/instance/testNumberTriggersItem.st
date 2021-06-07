testing
testNumberTriggersItem
	| target windowName oldWindows |

	self algInstance activate.
	self runQuery: 'browse ALGTest'.
	target := self items at: 3.
	windowName := 'System Browser: ', target algerType name.
	oldWindows := (self findSystemWindowsByLabel: windowName).
	self algInstance keyStroke: 
		(ALGFakeKeyboardEvent new 
			keyString: ('<{1}+3>' format: {ALGCore quickAccessModifier});
																						isKeyUp: false).
	self assert: (self findNewSystemWindowsByLabel: windowName old: oldWindows) size equals: 1.
	
		
									