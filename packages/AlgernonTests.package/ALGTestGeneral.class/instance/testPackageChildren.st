testing
testPackageChildren
	self runQuery: 'Algernon'.
	[self algerInstance currentItem algerType typeName = 'Package'] whileFalse:  [self algerInstance selectNext].
	self algerInstance showChildList.
	self assert: (self items allSatisfy: [:each |
		each algerType typeName = 'Action'
		and: [each name = 'browse Algernon' ]]).