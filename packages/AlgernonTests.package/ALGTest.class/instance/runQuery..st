helpers
runQuery: aString
	self algerInstance textField contents: aString.
	self algerInstance updateItemList.