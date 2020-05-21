testing
testTemporaryNames
	"Make sure temporary names are searched"
		
	self runQuery: 'ALGMethodType'.
	algerInstance showChildList.

	self deny: (algerInstance itemProvider relevantItemsFor: 'aLowercaseString')  isEmpty