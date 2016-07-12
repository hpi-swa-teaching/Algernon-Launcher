testing
testItemListNotEmptyForCategorySearches

	self ensureMorphic.

	algerstance show.
	algerstance textField contents:'AlgernonTests'.
	algerstance updateItemList.

	self deny: algerstance itemList items isEmpty