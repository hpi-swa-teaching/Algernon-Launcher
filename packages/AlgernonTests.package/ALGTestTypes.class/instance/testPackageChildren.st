testing package type
testPackageChildren
	self runQuery: 'Monticello' withCursorAt: 'Package'.
	self algInstance showChildList.
	self assert: (self items anySatisfy: [:each |
		each algerType typeName = 'Action'
		and: [each name = 'browse Monticello' ]]).