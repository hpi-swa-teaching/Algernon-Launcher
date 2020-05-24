testing
testPackageChildren
	self runQuery: 'Monticello'.
	self moveCursorTo: 'Package'.
	self algerInstance showChildList.
	self assert: (self items anySatisfy: [:each |
		each algerType typeName = 'Action'
		and: [each name = 'browse Monticello' ]]).