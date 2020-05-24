testing
testPackageChildren
	self runQuery: 'Monticello'.
	[self algerInstance currentItem algerType typeName = 'Package'] whileFalse:  [self algerInstance selectNext].
	self algerInstance showChildList.
	self assert: (self items anySatisfy: [:each |
		each algerType typeName = 'Action'
		and: [each name = 'browse Monticello' ]]).