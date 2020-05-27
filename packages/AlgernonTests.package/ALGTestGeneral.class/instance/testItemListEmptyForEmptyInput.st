testing
testItemListEmptyForEmptyInput

	self runQuery: String empty.

	self assert: algerInstance itemList isEmpty
