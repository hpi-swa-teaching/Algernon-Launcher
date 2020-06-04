testing
testMethodItems
	self runQuery: 'testPackageItems'.
	self assert: (self items anySatisfy: [:each | each algerType typeName = 'Method' ]).