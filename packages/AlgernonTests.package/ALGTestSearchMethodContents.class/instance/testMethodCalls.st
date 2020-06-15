testing
testMethodCalls
	"Make sure method calls are searched"
		
	self runQuery:'ALGMethodType'.
	self algerInstance showChildList.
	
	self deny: (algerInstance itemProvider relevantItemsFor: 'sourceCodeAt:') isEmpty