testing
testChildrenMovement
	| tab shiftTab |
	tab := ALGFakeKeyboardEvent new keyString: '<tab>'.
	shiftTab := ALGFakeKeyboardEvent new keyString: '<Shift-tab>'.
	self runQuery: 'ALGCore'.
	self algInstance keyStroke: tab.
	self assert: self algInstance inChild.
	self algInstance textField keyStroke: shiftTab.
	self assert: self algInstance notInChild