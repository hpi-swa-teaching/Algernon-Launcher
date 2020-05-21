helpers
runQuery: aString
	self algerInstance query: aString.
	self algerInstance updateItemList.