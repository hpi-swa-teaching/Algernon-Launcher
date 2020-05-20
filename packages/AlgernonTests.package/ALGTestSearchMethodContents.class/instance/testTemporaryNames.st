testing
testTemporaryNames
	"Make sure temporary names are searched"
		
	self ensureMorphic.

	algerInstance show.
	algerInstance textField contents:'ALGMethodType'.
	algerInstance updateItemList.
	algerInstance showChildList.

	self deny: (algerInstance itemProvider relevantItemsFor: 'aLowercaseString')  isEmpty