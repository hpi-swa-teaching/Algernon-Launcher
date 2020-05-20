testing
testItemListEmptyForEmptyInput

	self ensureMorphic.

	algerInstance show.
	algerInstance textField contents: String empty.
	algerInstance updateItemList.

	self assert: algerInstance itemList isEmpty
