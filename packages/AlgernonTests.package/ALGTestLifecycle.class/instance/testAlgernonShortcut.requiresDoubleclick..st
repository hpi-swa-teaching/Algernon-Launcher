testing
testAlgernonShortcut: shortcut requiresDoubleclick: doubleclick
	self algInstance deactivate: nil.
	self deny: self algInstance active.
	doubleclick ifTrue: [0.5 seconds wait].
	self algInstance handleListenEvent: (ALGFakeKeyboardEvent new keyString: shortcut shallowCopy;
			 isKeyUp: true).
	doubleclick ifTrue: [
		self algInstance handleListenEvent: (ALGFakeKeyboardEvent new keyString: shortcut shallowCopy;
			 	isKeyUp: true)].
	self assert: self algInstance active.
	doubleclick ifTrue: [0.5 seconds wait].
	self algInstance handleListenEvent: (ALGFakeKeyboardEvent new keyString: shortcut shallowCopy;
			 isKeyUp: true).
	doubleclick ifTrue: [
		self algInstance handleListenEvent: (ALGFakeKeyboardEvent new keyString: shortcut shallowCopy;
			 	isKeyUp: true)].
	self algInstance deactivate: nil