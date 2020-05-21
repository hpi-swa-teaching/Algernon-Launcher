testing
testItemListNotEmptyForCategorySearches

	self runQuery: 'AlgernonTests'.

	self deny: algerInstance itemList items isEmpty