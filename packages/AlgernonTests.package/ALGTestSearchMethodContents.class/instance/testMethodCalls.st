testing
testMethodCalls
	"Make sure method calls are searched"
		
	self runQuery:'ALGMethodType'.
	algerInstance showChildList.
	
	self deny: (algerInstance itemProvider relevantItemsFor: 'sourceCodeAt:') isEmpty