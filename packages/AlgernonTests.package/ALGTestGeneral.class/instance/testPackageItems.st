testing
testPackageItems
	self runQuery: 'Algernon'.
	self assert: (self items anySatisfy: [:each | each algerType typeName = 'Package' ]).