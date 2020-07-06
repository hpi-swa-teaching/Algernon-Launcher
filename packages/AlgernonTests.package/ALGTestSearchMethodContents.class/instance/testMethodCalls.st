testing
testMethodCalls
	"Make sure method calls are searched"
		
	self runQuery:'ALGMethodType'.
	self algInstance showChildList.
	self assert: (self items anySatisfy: [:each | each algerType class = ALGMethodType ]).