testing
testItemListEmptyForEmptyInput

	self ensureMorphic.

	algerstance show.
	algerstance textField contents:''.
	algerstance updateItemList.

	self assert: algerstance itemList items size = 0