testing
testMethodCallsAreSearched
	self runQuery:'ALGMethodType'.
	self algInstance showChildList.
	self assert: (self items anySatisfy: [:each | each algerType class = ALGMethodType ]).