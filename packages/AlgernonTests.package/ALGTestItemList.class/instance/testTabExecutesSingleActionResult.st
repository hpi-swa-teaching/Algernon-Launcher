testing
testTabExecutesSingleActionResult

	| browserCount browsers |
	
	browserCount := (self findSystemWindowsByLabel: 'Preference Browser') size.

	self runQuery: 'Preferences'.
	
	self algInstance keyStroke: (ALGFakeKeyboardEvent new keyString: '<tab>' shallowCopy;
			 isKeyUp: true).
			
	browsers := self findSystemWindowsByLabel: 'Preference Browser'.
	self assert: browsers size > browserCount