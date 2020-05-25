testing
testTemporaryNames
	"Make sure temporary names are searched"
		
	self runQuery: 'ALGMethodType'.
	self algerInstance showChildList.

	self deny: (algerInstance itemProvider relevantItemsFor: 'aLowercaseString')  isEmpty