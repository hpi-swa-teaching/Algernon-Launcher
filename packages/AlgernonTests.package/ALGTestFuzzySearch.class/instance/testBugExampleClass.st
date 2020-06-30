testing
testBugExampleClass
	self runQuery: 'alg'.
	self runQuery: 'Algernon'.
	self assert: (self items anySatisfy: [:each | each name = 'Algernon' ]).