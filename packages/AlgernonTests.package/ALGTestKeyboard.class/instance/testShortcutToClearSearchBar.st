testing
testShortcutToClearSearchBar
	| sampleKeyboardEvent deleteKeyboardEvent |
	sampleKeyboardEvent := ALGFakeKeyboardEvent new keyString: 'A';
				 keyValue: 65;
				 buttons: 0;
				 isKeyUp: true.
	deleteKeyboardEvent := ALGFakeKeyboardEvent new keyString: '<Ctrl-delete>'.
	self algInstance keyStroke: sampleKeyboardEvent.
	self algInstance keyStroke: sampleKeyboardEvent.
	self assert: self algInstance query equals: 'AA'.
	self algInstance keyStroke: deleteKeyboardEvent.
	self assert: self algInstance query equals: ''
	
	