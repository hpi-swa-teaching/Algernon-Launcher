helpers
moveCursorTo: aString
	self assert: (self items anySatisfy: [:each | each algerType typeName = aString ]).
	[self algInstance currentItem algerType typeName = aString] whileFalse:  [self algInstance selectNext].