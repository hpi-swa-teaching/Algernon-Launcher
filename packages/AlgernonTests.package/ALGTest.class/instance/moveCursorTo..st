helpers
moveCursorTo: aString
	self assert: (self items anySatisfy: [:each | each algerType typeName = aString ]).
	[self algerInstance currentItem algerType typeName = aString] whileFalse:  [self algerInstance selectNext].