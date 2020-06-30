testing
testBugExampleClass
	self runQuery: 'ALG'.
	self runQuery: 'ALGItemProvider'.
	self assert: (self items anySatisfy: [:each | each name = 'ALGItemProvider' ]).