testing
testNumberTriggersItem
	| windowName keyEvent |

	self runQuery: 'browse ALGTest'.
    	windowName := 'System Browser: ' , (self items at: 3) algerType name.
	keyEvent := ALGFakeKeyboardEvent new
		buttons: ((Dictionary newFrom: {'ctrl' -> 16. 'cmd' -> 64})
			at: ALGCore setQuickAccessModifier asLowercase);
		keyValue: '3';
		isKeyUp: false.
	self assert: [self algInstance keyStroke: keyEvent] opensNewWindow: windowName