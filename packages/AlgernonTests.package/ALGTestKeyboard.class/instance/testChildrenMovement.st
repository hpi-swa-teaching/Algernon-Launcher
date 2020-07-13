testing
testChildrenMovement
	| tab shiftTab |
	tab := (ALGFakeKeyboardEvent new)
		keyString: '<tab>'.
	shiftTab := (ALGFakeKeyboardEvent new)
		keyString: '<shift-tab>'.
		
	self runQuery: 'ALGCore'.
	self algInstance textField keyStroke: tab.
	self deny: self algInstance parentStack isEmpty.
	self algInstance textField keyStroke: shiftTab.
	self deny: self algInstance inChild.