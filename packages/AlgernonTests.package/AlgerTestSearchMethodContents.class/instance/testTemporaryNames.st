testing
testTemporaryNames
	"Make sure temporary names are searched"
		
	self ensureMorphic.

	algerstance show.
	algerstance textField contents:'ALGMethodType'.
	algerstance updateItemList.
	algerstance showChildList.
	
	self assert:((algerstance itemProvider relevantItemsFor: 'aLowercaseString')  size >= 1)