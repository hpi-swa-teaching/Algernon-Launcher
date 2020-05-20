testing
testHelpItems
	self runQuery: 'help'.
	self assert: (self items allSatisfy: [:each | each algerType typeName = 'Help' ]).