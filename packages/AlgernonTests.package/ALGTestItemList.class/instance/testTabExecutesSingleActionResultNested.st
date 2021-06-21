testing
testTabExecutesSingleActionResultNested

	| browserCount browsers |
	
	browserCount := (self findSystemWindowsByLabel: 'System Browser') size.

	self runQuery: 'BaselineOfAlgernon'.
	self algInstance keyStroke: (ALGFakeKeyboardEvent new keyString: '<tab>' shallowCopy;
			 isKeyUp: true).

	self runQuery: 'postLoad'.
	self algInstance keyStroke: (ALGFakeKeyboardEvent new keyString: '<tab>' shallowCopy;
			 isKeyUp: true).

	self runQuery: 'browse(new)'.
	self algInstance keyStroke: (ALGFakeKeyboardEvent new keyString: '<tab>' shallowCopy;
			 isKeyUp: true).
					
	browsers := self findSystemWindowsByLabel: 'System Browser'.
	self assert: browsers size > browserCount