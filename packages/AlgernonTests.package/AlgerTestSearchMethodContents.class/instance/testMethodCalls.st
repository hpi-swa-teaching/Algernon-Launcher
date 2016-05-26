testing
testMethodCalls
	"Make sure method calls are searched"
		
	self ensureMorphic.

	algerstance show.
	algerstance textField contents:'ALGMethodType'.
	algerstance updateItemList.
	algerstance showChildList.
	
	self assert:((algerstance itemProvider relevantItemsFor: 'sourceCodeAt:') size >= 1)