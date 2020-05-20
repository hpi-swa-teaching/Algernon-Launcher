testing
testMethodCalls
	"Make sure method calls are searched"
		
	self ensureMorphic.

	algerInstance show.
	algerInstance textField contents:'ALGMethodType'.
	algerInstance updateItemList.
	algerInstance showChildList.
	
	self deny: (algerInstance itemProvider relevantItemsFor: 'sourceCodeAt:') isEmpty