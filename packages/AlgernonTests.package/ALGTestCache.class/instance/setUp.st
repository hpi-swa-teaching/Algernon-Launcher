accessing
setUp
	cache := ALGCache new.
	self cacheKey: 'testKey'.
	self items: { ALGItem new . ALGItem new }.
	cache allMatchedItemsAt: self cacheKey put: self items.
	cache finalResultsAt: self cacheKey put: self items.