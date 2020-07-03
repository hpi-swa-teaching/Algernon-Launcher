helpers
assertResultContians: aString
	self assert: (self items anySatisfy: [:each | each name = aString ]).