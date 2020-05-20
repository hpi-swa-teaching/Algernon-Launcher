testing
testHelpItemsForKeyword
	self runQuery: 'open'.
	self assert: (self items anySatisfy: [:each | each algerType typeName = 'Help' ]).