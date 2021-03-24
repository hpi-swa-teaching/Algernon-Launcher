helpers
runQuery: aString
	self algInstance query: aString.
	self algInstance updateItemList.