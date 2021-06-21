testing
testTabDoesNotExecuteMultiActionResult

	| browserCount browsers |
	
	browserCount := (self findSystemWindowsByLabel: 'System Browser') size.

	self runQuery: 'ALGIconFactory'.
	
	self algInstance keyStroke: (ALGFakeKeyboardEvent new keyString: '<tab>' shallowCopy;
			 isKeyUp: true).
			
	browsers := self findSystemWindowsByLabel: 'System Browser'.
	self assert: browsers size = browserCount