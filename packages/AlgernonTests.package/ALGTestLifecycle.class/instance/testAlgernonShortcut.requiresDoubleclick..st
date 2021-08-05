helpers
testAlgernonShortcut: shortcut requiresDoubleclick: doubleclick
	| event |
	
	event := ALGFakeKeyboardEvent new keyString: shortcut shallowCopy;
				isKeyDown: true.

	self algInstance deactivate: nil.
	
	self deny: self algInstance active.
	doubleclick ifTrue: [0.5 seconds wait].
	self algInstance handleListenEvent: event.
	doubleclick ifTrue: [self algInstance handleListenEvent: event].
	
	self assert: self algInstance active.
	doubleclick ifTrue: [0.5 seconds wait].
	self algInstance handleListenEvent: event.
	doubleclick ifTrue: [self algInstance handleListenEvent: event]