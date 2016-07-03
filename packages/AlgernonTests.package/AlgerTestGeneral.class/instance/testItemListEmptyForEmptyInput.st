testing
testItemListEmptyForEmptyInput

	self ensureMorphic.

	algerstance show.
	algerstance textField contents: String empty.
	algerstance updateItemList.

	self assert: algerstance itemList isEmpty
