testing
testEmptyItemListYieldsALGNullItem

	self ensureMorphic.

	algerInstance show.
	algerInstance textField contents: String empty.
	algerInstance updateItemList.

	self assert: ALGNullItem equals: algerInstance itemList selectedListItem class
