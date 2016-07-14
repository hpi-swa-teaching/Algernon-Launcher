testing
testEmptyItemListYieldsALGNullItem

	self ensureMorphic.

	algerstance show.
	algerstance textField contents: String empty.
	algerstance updateItemList.

	self assert: ALGNullItem equals: algerstance itemList selectedListItem class
