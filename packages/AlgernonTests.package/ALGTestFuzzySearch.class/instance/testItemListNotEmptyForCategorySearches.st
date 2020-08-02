testing queries
testItemListNotEmptyForCategorySearches
	self runQuery: 'AlgernonTests'.
	self deny: self items isEmpty