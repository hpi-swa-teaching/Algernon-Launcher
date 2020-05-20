testing
testItemListNotEmptyForCategorySearches

	self ensureMorphic.

	algerInstance show.
	algerInstance textField contents:'AlgernonTests'.
	algerInstance updateItemList.

	self deny: algerInstance itemList items isEmpty