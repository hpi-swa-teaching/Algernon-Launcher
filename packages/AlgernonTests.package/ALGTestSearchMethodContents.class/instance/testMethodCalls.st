testing
testMethodCalls
	"Make sure method calls are searched"
		
	self ensureMorphic.

	algerstance show.
	algerstance textField contents:'ALGMethodType'.
	algerstance updateItemList.
	algerstance showChildList.
	
	self deny: (algerstance itemProvider relevantItemsFor: 'sourceCodeAt:') isEmpty