testing
testItemListNotEmptyForCategorySearches

	self ensureMorphic.

	algerstance show.
	algerstance textField contents:'AlgernonTests'.
	algerstance updateItemList.

	self assert: algerstance itemList items size > 0