testing
testEmptyItemListYieldsALGNullItem

	self runQuery: String empty.

	self assert: ALGNullItem equals: algerInstance itemList selectedListItem class
